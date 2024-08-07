package main

import (
	"encoding/xml"
	"fmt"
	"io/ioutil"
	"os"
	"os/exec"
	"path/filepath"
	"github.com/fatih/color"
)

type Manifest struct {
	XMLName     xml.Name     `xml:"manifest"`
	Package     string       `xml:"package,attr"`
	Applications []Application `xml:"application"`
}

type Application struct {
	Activities []Activity `xml:"activity"`
	Services   []Service  `xml:"service"`
	Receivers  []Receiver `xml:"receiver"`
}

type Activity struct {
	Name          string        `xml:"name,attr"`
	Exported      string        `xml:"exported,attr"`
	IntentFilters []IntentFilter `xml:"intent-filter"`
}

type Service struct {
	Name          string        `xml:"name,attr"`
	Exported      string        `xml:"exported,attr"`
	IntentFilters []IntentFilter `xml:"intent-filter"`
}

type Receiver struct {
	Name          string        `xml:"name,attr"`
	Exported      string        `xml:"exported,attr"`
	IntentFilters []IntentFilter `xml:"intent-filter"`
}

type IntentFilter struct {
	Actions []Action `xml:"action"`
	Data    []Data   `xml:"data"`
}

type Action struct {
	Name string `xml:"name,attr"`
}

type Data struct {
	Scheme string `xml:"scheme,attr"`
	Host   string `xml:"host,attr"`
}

func main() {
	if len(os.Args) < 3 {
		fmt.Println("Usage: deeplinks <path_to_apk> <output_directory>")
		return
	}

	apkPath := os.Args[1]
	outputDir := os.Args[2]

	banner()
	// Decompile APK
	decompileApk(apkPath, outputDir)
	// Read and parse AndroidManifest.xml
	readAndParseManifestFile(outputDir)

}

func banner(){
	fmt.Println(color.GreenString(`
 ####     ######   ######   #####    ##  ##   ######   #####      ##      ####    ######  
 ## ##    ##       ##       ##  ##   ##  ##     ##     ##  ##    ####    ##  ##     ##    
 ##  ##   ##       ##       ##  ##     ###      ##     ##  ##   ##  ##   ##         ##    
 ##  ##   ####     ####     #####      ##       ##     #####    ######   ##         ##    
 ##  ##   ##       ##       ##        ####      ##     ####     ##  ##   ##         ##    
 ## ##    ##       ##       ##       ##  ##     ##     ## ##    ##  ##   ##  ##     ##    
 ####     ######   ######   ##       ##  ##     ##     ##  ##   ##  ##    ####      ##                                   
	`))
}

func decompileApk(apkPath string, outputDir string){
	fmt.Println(color.GreenString("Decompiling APK..."))
	cmd := exec.Command("apktool", "d", apkPath, "-o", outputDir, "-f")
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	err := cmd.Run()
	if err != nil {
		fmt.Println("Error decompiling APK:", err)
		return
	}
}

// Read and parse AndroidManifest.xml

func readAndParseManifestFile(outputDir string){
	manifestPath := filepath.Join(outputDir, "AndroidManifest.xml")
	if _, err := os.Stat(manifestPath); os.IsNotExist(err) {
		fmt.Println("AndroidManifest.xml not found in decompiled output")
		return
	}

	manifestFile, err := ioutil.ReadFile(manifestPath)
	if err != nil {
		fmt.Println("Error reading AndroidManifest.xml:", err)
		return
	}

	var manifest Manifest
	if err := xml.Unmarshal(manifestFile, &manifest); err != nil {
		fmt.Println("Error parsing AndroidManifest.xml:", err)
		return
	}

	parseAndPrintManifest(manifest)
}

func parseAndPrintManifest(manifest Manifest) {
	printComponent := func(componentType, name, exported string, filters []IntentFilter) {
		fmt.Println(color.CyanString("%s: %s (exported=%s)", componentType, name, exported))
		if len(filters) == 0 {
			fmt.Println(color.YellowString("    Intent Action: none"))
			fmt.Println(color.MagentaString("    Custom URL Scheme: none"))
		} else {
			for _, filter := range filters {
				if len(filter.Actions) == 0 {
					fmt.Println(color.YellowString("    Intent Action: none"))
				}
				for _, action := range filter.Actions {
					fmt.Println(color.YellowString("    Intent Action: %s", action.Name))
				}

				if len(filter.Data) == 0 {
					fmt.Println(color.MagentaString("    Custom URL Scheme: none"))
				} else {
					for _, data := range filter.Data {
						if data.Scheme == "" {
							fmt.Println(color.MagentaString("    Custom URL Scheme: none"))
						} else if data.Host == "" {
							fmt.Println(color.MagentaString("    Custom URL Scheme: %s://", data.Scheme))
						} else {
							fmt.Println(color.MagentaString("    Custom URL Scheme: %s://%s", data.Scheme, data.Host))
						}
					}
				}
			}
		}
	}

	for _, activity := range manifest.Applications[0].Activities {
		printComponent("Activity", activity.Name, activity.Exported, activity.IntentFilters)
	}

	for _, service := range manifest.Applications[0].Services {
		printComponent("Service", service.Name, service.Exported, service.IntentFilters)
	}

	for _, receiver := range manifest.Applications[0].Receivers {
		printComponent("Receiver", receiver.Name, receiver.Exported, receiver.IntentFilters)
	}
}

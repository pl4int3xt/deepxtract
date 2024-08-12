// package main

// import (
// 	"encoding/xml"
// 	"fmt"
// 	"os"
// 	"os/exec"
// 	"path/filepath"
// 	"github.com/fatih/color"
// )

// type Manifest struct {
// 	XMLName     xml.Name     `xml:"manifest"`
// 	Package     string       `xml:"package,attr"`
// 	Applications []Application `xml:"application"`
// }

// type Application struct {
// 	Activities []Activity `xml:"activity"`
// 	Services   []Service  `xml:"service"`
// 	Receivers  []Receiver `xml:"receiver"`
// }

// type Activity struct {
// 	Name          string        `xml:"name,attr"`
// 	Exported      string        `xml:"exported,attr"`
// 	IntentFilters []IntentFilter `xml:"intent-filter"`
// }

// type Service struct {
// 	Name          string        `xml:"name,attr"`
// 	Exported      string        `xml:"exported,attr"`
// 	IntentFilters []IntentFilter `xml:"intent-filter"`
// }

// type Receiver struct {
// 	Name          string        `xml:"name,attr"`
// 	Exported      string        `xml:"exported,attr"`
// 	IntentFilters []IntentFilter `xml:"intent-filter"`
// }

// type IntentFilter struct {
// 	Actions []Action `xml:"action"`
// 	Data    []Data   `xml:"data"`
// }

// type Action struct {
// 	Name string `xml:"name,attr"`
// }

// type Data struct {
// 	Scheme   string `xml:"scheme,attr"`
// 	Host     string `xml:"host,attr"`
// 	MimeType string `xml:"mimeType,attr"`
// }

// func main() {
// 	if len(os.Args) < 3 {
// 		banner()
// 		fmt.Println("Usage: deepxtract <path_to_apk> <output_directory>")
// 		return
// 	}

// 	apkPath := os.Args[1]
// 	outputDir := os.Args[2]

// 	banner()
// 	// Decompile APK
// 	decompileApk(apkPath, outputDir)
// 	// Read and parse AndroidManifest.xml
// 	readAndParseManifestFile(outputDir)

// }

// func banner(){
// 	fmt.Println(color.GreenString(`
//  ####     ######   ######   #####    ##  ##   ######   #####      ##      ####    ######  
//  ## ##    ##       ##       ##  ##   ##  ##     ##     ##  ##    ####    ##  ##     ##    
//  ##  ##   ##       ##       ##  ##     ###      ##     ##  ##   ##  ##   ##         ##    
//  ##  ##   ####     ####     #####      ##       ##     #####    ######   ##         ##    
//  ##  ##   ##       ##       ##        ####      ##     ####     ##  ##   ##         ##    
//  ## ##    ##       ##       ##       ##  ##     ##     ## ##    ##  ##   ##  ##     ##    
//  ####     ######   ######   ##       ##  ##     ##     ##  ##   ##  ##    ####      ##                                   
// 	`))
// }

// func decompileApk(apkPath string, outputDir string){
// 	fmt.Println(color.GreenString("Decompiling APK..."))
// 	cmd := exec.Command("apktool", "d", apkPath, "-o", outputDir, "-f")
// 	// cmd.Stdout = os.Stdout
// 	// cmd.Stderr = os.Stderr
// 	err := cmd.Run()
// 	if err != nil {
// 		fmt.Println("Error decompiling APK:", err)
// 		return
// 	}
// }

// // Read and parse AndroidManifest.xml

// func readAndParseManifestFile(outputDir string){
// 	manifestPath := filepath.Join(outputDir, "AndroidManifest.xml")
// 	if _, err := os.Stat(manifestPath); os.IsNotExist(err) {
// 		fmt.Println("AndroidManifest.xml not found in decompiled output")
// 		return
// 	}

// 	manifestFile, err := os.ReadFile(manifestPath)
// 	if err != nil {
// 		fmt.Println("Error reading AndroidManifest.xml:", err)
// 		return
// 	}

// 	var manifest Manifest
// 	if err := xml.Unmarshal(manifestFile, &manifest); err != nil {
// 		fmt.Println("Error parsing AndroidManifest.xml:", err)
// 		return
// 	}

// 	parseAndPrintManifest(manifest)
// }

// func parseAndPrintManifest(manifest Manifest) {
// 	printComponent := func(componentType, name, exported string, filters []IntentFilter) {
// 		fmt.Println(color.CyanString("\n%s\n    %s(exported=%s) \n", componentType, name, exported))
// 		if len(filters) == 0 {
// 			fmt.Println(color.YellowString("        Intent Action: none"))
// 			fmt.Println(color.MagentaString("        Custom URL Scheme: none"))
// 			fmt.Println(color.RedString("        MIME Type: none"))
// 		} else {
// 			for _, filter := range filters {
// 				if len(filter.Actions) == 0 {
// 					fmt.Println(color.YellowString("        Intent Action: none"))
// 				}
// 				for _, action := range filter.Actions {
// 					fmt.Println(color.YellowString("        Intent Action: %s", action.Name))
// 				}

// 				if len(filter.Data) == 0 {
// 					fmt.Println(color.MagentaString("        Custom URL Scheme: none"))
// 					fmt.Println(color.RedString("        MIME Type: none"))
// 				} else {
// 					for _, data := range filter.Data {
// 						if data.Scheme == "" {
// 							fmt.Println(color.MagentaString("        Custom URL Scheme: none"))
// 						} else if data.Host == "" {
// 							fmt.Println(color.MagentaString("        Custom URL Scheme: %s://", data.Scheme))
// 						} else {
// 							fmt.Println(color.MagentaString("        Custom URL Scheme: %s://%s", data.Scheme, data.Host))
// 						}
// 						if data.MimeType == "" {
// 							fmt.Println(color.RedString("        MIME Type: none"))
// 						} else {
// 							fmt.Println(color.RedString("        MIME Type: %s", data.MimeType))
// 						}
// 					}
// 				}
// 			}
// 		}
// 	}

// 	for _, activity := range manifest.Applications[0].Activities {
// 		printComponent("Activities \n", activity.Name, activity.Exported, activity.IntentFilters)
// 	}

// 	for _, service := range manifest.Applications[0].Services {
// 		printComponent("Services \n", service.Name, service.Exported, service.IntentFilters)
// 	}

// 	for _, receiver := range manifest.Applications[0].Receivers {
// 		printComponent("Receivers \n", receiver.Name, receiver.Exported, receiver.IntentFilters)
// 	}
// }


package main

import (
	"fmt"
	"os"
	"path/filepath"
	"sync"
	"github.com/fatih/color"
	"deepxtract/decompiler"
	"deepxtract/manifest"
	"deepxtract/printer"
)

func main() {
	if len(os.Args) < 3 {
		printer.PrintBanner()
		fmt.Println("Usage: deepxtract <path_to_apk> <output_directory>")
		return
	}

	apkPath := os.Args[1]
	outputDir := os.Args[2]

	printer.PrintBanner()

	var wg sync.WaitGroup
	wg.Add(1)

	errChan := make(chan error, 2)

    decompiler.DecompileApk(apkPath, outputDir)
	
	// Parse manifest concurrently
	var man manifest.Manifest
	go func() {
		defer wg.Done()
		var err error
		man, err = manifest.ParseManifest(filepath.Join(outputDir, "AndroidManifest.xml"))
		if err != nil {
			errChan <- fmt.Errorf("parsing manifest: %w", err)
		}
	}()

	wg.Wait()
	close(errChan)

	for err := range errChan {
		fmt.Println(color.RedString("Error: %v", err))
		return
	}

	// Print manifest contents
	printer.PrintManifest(man)
}

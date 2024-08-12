package printer

import (
    "fmt"
    "sync"

    "github.com/fatih/color"
    "deepxtract/manifest"
)

func PrintBanner() {
    fmt.Println(color.GreenString(`
 ####     ######   ######   #####    ##  ##   ######   #####      ##      ####    ######  
 ##  ##   ##       ##       ##  ##     ###      ##     ##  ##   ##  ##   ##         ##    
 ##  ##   ####     ####     #####      ##       ##     #####    ######   ##         ##    
 ##  ##   ##       ##       ##        ####      ##     ####     ##  ##   ##         ##    
 ####     ######   ######   ##       ##  ##     ##     ##  ##   ##  ##    ####      ##                                   
    `))
}

func PrintManifest(manifest manifest.Manifest) {
    var wg sync.WaitGroup
    wg.Add(3)

    go func() {
        defer wg.Done()
        printComponents("Activities", manifest.Applications[0].Activities)
    }()

    go func() {
        defer wg.Done()
        printComponents("Services", manifest.Applications[0].Services)
    }()

    go func() {
        defer wg.Done()
        printComponents("Receivers", manifest.Applications[0].Receivers)
    }()

    wg.Wait()
}

func printComponents(componentType string, components interface{}) {
    switch c := components.(type) {
    case []manifest.Activity:
        for _, component := range c {
            printComponent(componentType, component.Name, component.Exported, component.IntentFilters)
        }
    case []manifest.Service:
        for _, component := range c {
            printComponent(componentType, component.Name, component.Exported, component.IntentFilters)
        }
    case []manifest.Receiver:
        for _, component := range c {
            printComponent(componentType, component.Name, component.Exported, component.IntentFilters)
        }
    }
}

func printComponent(componentType, name, exported string, filters []manifest.IntentFilter) {
    fmt.Println(color.CyanString("\n%s\n    %s(exported=%s) \n", componentType, name, exported))
    if len(filters) == 0 {
        fmt.Println(color.YellowString("        Intent Action: none"))
        fmt.Println(color.MagentaString("        Custom URL Scheme: none"))
        fmt.Println(color.RedString("        MIME Type: none"))
    } else {
        for _, filter := range filters {
            if len(filter.Actions) == 0 {
                fmt.Println(color.YellowString("        Intent Action: none"))
            }
            for _, action := range filter.Actions {
                fmt.Println(color.YellowString("        Intent Action: %s", action.Name))
            }

            if len(filter.Data) == 0 {
                fmt.Println(color.MagentaString("        Custom URL Scheme: none"))
                fmt.Println(color.RedString("        MIME Type: none"))
            } else {
                for _, data := range filter.Data {
                    if data.Scheme == "" {
                        fmt.Println(color.MagentaString("        Custom URL Scheme: none"))
                    } else if data.Host == "" {
                        fmt.Println(color.MagentaString("        Custom URL Scheme: %s://", data.Scheme))
                    } else {
                        fmt.Println(color.MagentaString("        Custom URL Scheme: %s://%s", data.Scheme, data.Host))
                    }
                    if data.MimeType == "" {
                        fmt.Println(color.RedString("        MIME Type: none"))
                    } else {
                        fmt.Println(color.RedString("        MIME Type: %s", data.MimeType))
                    }
                }
            }
        }
    }
}
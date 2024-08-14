package printer

import (
    "fmt"
    "sync"
    "github.com/fatih/color"
    "deepxtract/manifest"
)

func PrintBanner() {
    fmt.Println(color.GreenString(`
 ____  _____ _____ ____ ___  _ _____  ____  ____  ____  _____ 
/  _ \/  __//  __//  __\\  \///__ __\/  __\/  _ \/   _\/__ __\
| | \||  \  |  \  |  \/| \  /   / \  |  \/|| / \||  /    / \  
| |_/||  /_ |  /_ |  __/ /  \   | |  |    /| |-|||  \_   | |  
\____/\____\\____\\_/   /__/\\  \_/  \_/\_\\_/ \|\____/  \_/                                                                       
    `))
}

func PrintManifest(manifest manifest.Manifest) {
    var wg sync.WaitGroup
    wg.Add(3)

    go func() {
        defer wg.Done()
        printComponentGroup("Receivers", manifest.Applications[0].Receivers)
    }()
    go func() {
        defer wg.Done()
        printComponentGroup("Activities", manifest.Applications[0].Activities)
    }()
    go func() {
        defer wg.Done()
        printComponentGroup("Services", manifest.Applications[0].Services)
    }()

    wg.Wait()
}

func printComponentGroup(componentType string, components interface{}) {
    fmt.Println(color.CyanString("\n[+] %s", componentType))
    switch c := components.(type) {
    case []manifest.Activity:
        for _, component := range c {
            printComponent(component.Name, component.Exported, component.IntentFilters)
        }
    case []manifest.Service:
        for _, component := range c {
            printComponent(component.Name, component.Exported, component.IntentFilters)
        }
    case []manifest.Receiver:
        for _, component := range c {
            printComponent(component.Name, component.Exported, component.IntentFilters)
        }
    }
}

func printComponent(name, exported string, filters []manifest.IntentFilter) {
    fmt.Printf(color.YellowString("    [>] %s(exported=%s)\n"), name, exported)
    if len(filters) == 0 {
        printEmptyFilters()
    } else {
        for _, filter := range filters {
            printFilter(filter)
        }
    }
}

func printEmptyFilters() {
    fmt.Println(color.MagentaString("        [-] Intent Action: none"))
    fmt.Println(color.BlueString("        [-] Custom URL Scheme: none"))
    fmt.Println(color.RedString("        [-] MIME Type: none"))
}

func printFilter(filter manifest.IntentFilter) {
    if len(filter.Actions) == 0 {
        fmt.Println(color.MagentaString("        [-] Intent Action: none"))
    } else {
        for _, action := range filter.Actions {
            fmt.Printf(color.MagentaString("        [+] Intent Action: %s\n"), action.Name)
        }
    }

    if len(filter.Data) == 0 {
        fmt.Println(color.BlueString("        [-] Custom URL Scheme: none"))
        fmt.Println(color.RedString("        [-] MIME Type: none"))
    } else {
        for _, data := range filter.Data {
            printURLScheme(data)
            printMIMEType(data)
        }
    }
}

func printURLScheme(data manifest.Data) {
    if data.Scheme == "" {
        fmt.Println(color.BlueString("        [-] Custom URL Scheme: none"))
    } else if data.Host == "" {
        fmt.Printf(color.BlueString("        [+] Custom URL Scheme: %s://\n"), data.Scheme)
    } else {
        fmt.Printf(color.BlueString("        [+] Custom URL Scheme: %s://%s\n"), data.Scheme, data.Host)
    }
}

func printMIMEType(data manifest.Data) {
    if data.MimeType == "" {
        fmt.Println(color.RedString("        [-] MIME Type: none"))
    } else {
        fmt.Printf(color.RedString("        [+] MIME Type: %s\n"), data.MimeType)
    }
}
package manifest

import (
    "encoding/xml"
    "os"
)

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

type Data struct {
	Scheme   string `xml:"scheme,attr"`
	Host     string `xml:"host,attr"`
	MimeType string `xml:"mimeType,attr"`
}

type Action struct {
	Name string `xml:"name,attr"`
}

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

func ParseManifest(path string) (Manifest, error) {
    file, err := os.Open(path)
    if err != nil {
        return Manifest{}, err
    }
    defer file.Close()

    decoder := xml.NewDecoder(file)
    var manifest Manifest
    if err := decoder.Decode(&manifest); err != nil {
        return Manifest{}, err
    }

    return manifest, nil
}
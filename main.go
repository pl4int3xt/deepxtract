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

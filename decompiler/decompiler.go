package decompiler

import (
    "os/exec"
    "fmt"
)

func DecompileApk(apkPath, outputDir string) error {
    cmd := exec.Command("apktool", "d", apkPath, "-o", outputDir, "-f")
	fmt.Println("Decompiling apk file ....... ")
    output, err := cmd.CombinedOutput()
    if err != nil {
        return fmt.Errorf("error decompiling APK: %w\nOutput: %s", err, output)
    }
    return nil
}
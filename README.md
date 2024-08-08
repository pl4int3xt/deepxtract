# Deepextract
Deepextract is a command-line tool for extracting and analyzing deep link configurations from Android APK files. 
The tool decompiles the APK to access the `AndroidManifest.xml` file and extracts details about activities, services, and broadcast receivers, 
including their intent actions, custom URL schemes and mimeTypes.

# Installation
Ensure apktool is installed
```bash
git clone https://github.com/pl4int3xt/deepxtract.git
cd deepxtract
```
Build the tool

```bash
go build -o deepxtract main.go
```

# Usage
```bash
./deepxtract <path_to_apk> <output_directory>
```
Example
```yaml
./deepxtract ~/Documents/example.apk output

 ####     ######   ######   #####    ##  ##   ######   #####      ##      ####    ######  
 ## ##    ##       ##       ##  ##   ##  ##     ##     ##  ##    ####    ##  ##     ##    
 ##  ##   ##       ##       ##  ##     ###      ##     ##  ##   ##  ##   ##         ##    
 ##  ##   ####     ####     #####      ##       ##     #####    ######   ##         ##    
 ##  ##   ##       ##       ##        ####      ##     ####     ##  ##   ##         ##    
 ## ##    ##       ##       ##       ##  ##     ##     ## ##    ##  ##   ##  ##     ##    
 ####     ######   ######   ##       ##  ##     ##     ##  ##   ##  ##    ####      ##                                   

Decompiling APK...

Activities 

    com.example.test.MainActivity(exported=true) 

        Intent Action: android.intent.action.MAIN
        Custom URL Scheme: none
        MIME Type: none
        Intent Action: android.intent.action.VIEW
        Custom URL Scheme: myscheme://host
        MIME Type: application/pdf

Receivers 

    androidx.profileinstaller.ProfileInstallReceiver(exported=true) 

        Intent Action: androidx.profileinstaller.action.INSTALL_PROFILE
        Custom URL Scheme: none
        MIME Type: none
        Intent Action: androidx.profileinstaller.action.SKIP_FILE
        Custom URL Scheme: none
        MIME Type: none
        Intent Action: androidx.profileinstaller.action.SAVE_PROFILE
        Custom URL Scheme: none
        MIME Type: none
        Intent Action: androidx.profileinstaller.action.BENCHMARK_OPERATION
        Custom URL Scheme: none
        MIME Type: none
```

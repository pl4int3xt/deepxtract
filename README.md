# Deepextract
Deepextract is a command-line tool for extracting and analyzing deep link configurations from Android APK files. 
The tool decompiles the APK to access the `AndroidManifest.xml` file and extracts details about activities, services, and broadcast receivers, 
including their intent actions and custom URL schemes.

# Installation
Ensure apktool is installed
```bash
git clone https://github.com/pl4int3xt/deepxtract.git
cd deepxtract
```
Build the tool

```
go build -o deepxtract main.go
```

# Usage
```
./deepxtract <path_to_apk> <output_directory>
```
Example
```
./deepxtract example.apk output

 ####     ######   ######   #####    ##  ##   ######   #####      ##      ####    ######  
 ## ##    ##       ##       ##  ##   ##  ##     ##     ##  ##    ####    ##  ##     ##    
 ##  ##   ##       ##       ##  ##     ###      ##     ##  ##   ##  ##   ##         ##    
 ##  ##   ####     ####     #####      ##       ##     #####    ######   ##         ##    
 ##  ##   ##       ##       ##        ####      ##     ####     ##  ##   ##         ##    
 ## ##    ##       ##       ##       ##  ##     ##     ## ##    ##  ##   ##  ##     ##    
 ####     ######   ######   ##       ##  ##     ##     ##  ##   ##  ##    ####      ##                                   

Decompiling APK...
I: Using Apktool 2.9.3 on app-release-unsigned.apk
I: Loading resource table...
I: Decoding file-resources...
I: Loading resource table from file: ~/.local/share/apktool/framework/1.apk
I: Decoding values */* XMLs...
I: Decoding AndroidManifest.xml with resources...
I: Regular manifest package...
I: Baksmaling classes.dex...
I: Copying assets and libs...
I: Copying unknown files...
I: Copying original files...
I: Copying META-INF/services directory
Activity: com.example.MainActivity (exported=true)
    Intent Action: android.intent.action.MAIN
    Custom URL Scheme: myscheme://example
Service: com.example.MyService (exported=false)
    Intent Action: android.intent.action.SOME_ACTION
    Custom URL Scheme: none
```

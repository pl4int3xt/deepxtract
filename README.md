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
./deepxtract ~/Documents/aah.apk output
 ____  _____ _____ ____ ___  _ _____  ____  ____  ____  _____ 
/  _ \/  __//  __//  __\\  \///__ __\/  __\/  _ \/   _\/__ __\
| | \||  \  |  \  |  \/| \  /   / \  |  \/|| / \||  /    / \  
| |_/||  /_ |  /_ |  __/ /  \   | |  |    /| |-|||  \_   | |  
\____/\____\\____\\_/   /__/\\  \_/  \_/\_\\_/ \|\____/  \_/                                                                       
    
Decompiling apk file ....... 

[+] Services

[+] Receivers
    [>] aah.challenges.Receivers.Challenge03Receiver(exported=true)
        [+] Intent Action: android.provider.Telephony.SECRET_CODE
        [+] Custom URL Scheme: android_secret_code://600613
        [-] MIME Type: none
    [>] aah.challenges.Receivers.Challenge05Receiver(exported=true)
        [+] Intent Action: aah.intent.LOAD_LIB
        [-] Custom URL Scheme: none
        [-] MIME Type: none

[+] Activities
    [>] aah.challenges.Challenge09Activity(exported=false)
        [-] Intent Action: none
        [-] Custom URL Scheme: none
        [-] MIME Type: none
    [>] aah.challenges.Challenge08Activity(exported=false)
        [-] Intent Action: none
        [-] Custom URL Scheme: none
        [-] MIME Type: none


```

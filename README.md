<!-- SPYTROG -->
<p align='center'>
  <img src="https://github.com/77AXEL/Web2APK/blob/main/images/logo.png"></img>

#### Presentation:
- Our GitHub repository houses a transformative project that automates the conversion of HTML, CSS, and JavaScript front-end projects into Android applications. This tool streamlines the process, enabling developers to port their web projects to Android without extensive manual effort, enhancing cross-platform development efficiency.
#### Installation:
- If Git is not installed, you can obtain the tool by clicking the <a href="https://github.com/77AXEL/Web2APK/archive/refs/heads/main.zip">Download</a> button
- If Git is already installed, you can utilize this command:
```
git clone https://github.com/7AXEL/Web2APK
```
#### Use
- To use the tool, follow these steps:
- **`1`** Develop a front-end project similar to this example:<br><br>
<img src="https://github.com/77AXEL/Web2APK/blob/main/images/cap2.png"></img><br>
- **`2`** Compress the project folder into a ZIP file:<br><br>
<img src="https://github.com/77AXEL/Web2APK/blob/main/images/cap3.png"></img><br>
- **`3`** Navigate to the Web2APK directory and run this cammand:
```
python web2apk.py -zip path_to_your_zip_file -icon path_to_your_desired_icon -name your_desired_app_name 
```
- Once you run this command, the tool will start compiling and building the APK file. After compiling, you will get output like this:<br><br>
<img src="https://github.com/77AXEL/Web2APK/blob/main/images/cap1.png"></img><br>
- Finally, you will find the compiled APK in the dist directory:<br><br>
<img src="https://github.com/77AXEL/Web2APK/blob/main/images/cap4.png"></img><br>
- **`Note:`**
-   Using the WebP image format for the app icon is recommended.
-   If you encounter any problem or issue with the tool, you can check the build.log and sign.log files located in the log folder
-   Using this tool requires having the JAVA JDK and ANDROID SDK installed, with their paths, JAVA_HOME and ANDROID_HOME, set in your environment path
-   If you don't have them installed yet, follow those links:<br>
    <a href="https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html">Java JDK</a><br>
    <a href="https://developer.android.com/studio?gad_source=1&gclid=CjwKCAjw1emzBhB8EiwAHwZZxaDZomNDa979EuJ6E2Xjgrp4o-NiDyc36wXADYMinU0JmuodKHYPsBoCC40QAvD_BwE&gclsrc=aw.ds&hl=fr">Android SDK</a>

#### Platforms
> Supported Platform : **`Windows`**, **`Mac-OS`**, **`Ubuntu/Debian/Kali/Parrot/Arch Linux`**<br>
<hr>

<img src="https://img.shields.io/badge/Author-A.X.E.L-red?style=flat-square;"></img>
<img src="https://img.shields.io/badge/Open Source-Yes-red?style=flat-square;"></img>



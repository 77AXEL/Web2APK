# Web2APK

<p align='center'>
  <img src="https://github.com/77AXEL/Web2APK/blob/main/images/logo.png" alt="Web2APK Logo">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Open_Source-Yes-red?style=flat-square" alt="Open Source">
  <img src="https://img.shields.io/badge/Platform-Windows%20|%20macOS%20|%20Linux-blue?style=flat-square" alt="Platform Support">
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="License">
</p>

---

## 📱 Overview

Web2APK is a powerful automation tool that converts your web projects (HTML, CSS, JavaScript) into native Android applications. Skip the manual conversion process and deploy your web applications to Android devices with just a single command.

### ✨ Features

- 🚀 **One-Command Conversion** - Convert web projects to APK instantly
- 🎨 **Custom Branding** - Set your own app name and icon
- 🔧 **Automated Building** - Handles compilation and signing automatically
- 🌍 **Cross-Platform** - Works on Windows, macOS, and Linux
- 📦 **No Manual Configuration** - Just provide your project and go

---

## ⚠️ Prerequisites

> **Important:** This tool requires Java JDK and Android SDK to be installed on your system with their environment variables properly configured.

### Required Environment Variables:
- **`JAVA_HOME`** - Path to your Java JDK installation
- **`ANDROID_HOME`** - Path to your Android SDK installation

### Installation Links:
- [Java JDK 17+](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html) - Required for APK compilation
- [Android SDK](https://developer.android.com/studio) - Required for Android build tools

**Verification:** Run the following commands to verify your setup:
```bash
echo $JAVA_HOME    # Linux/macOS
echo $ANDROID_HOME

echo %JAVA_HOME%    # Windows
echo %ANDROID_HOME%
```

---

## 📥 Installation

### Option 1: Using Git
```bash
git clone https://github.com/77AXEL/Web2APK
cd Web2APK
```

### Option 2: Direct Download
Download the [latest release](https://github.com/77AXEL/Web2APK/archive/refs/heads/main.zip) and extract it to your desired location.

---

## 🚀 Usage

### Step 1: Prepare Your Web Project

Create your front-end project with the following structure:

```
my-web-project/
├── index.html
├── css/
│   └── style.css
├── js/
│   └── script.js
└── assets/
    └── images/
```

<img src="https://github.com/77AXEL/Web2APK/blob/main/images/cap2.png" alt="Project Structure" width="600">

### Step 2: Compress Your Project

Create a ZIP archive of your entire project folder:

<img src="https://github.com/77AXEL/Web2APK/blob/main/images/cap3.png" alt="Compress Project" width="600">

### Step 3: Run the Conversion

Navigate to the Web2APK directory and execute:

```bash
python wa.py -zip path/to/your/project.zip -icon path/to/your/icon.webp -name "YourAppName"
```

**Example:**
```bash
python wa.py -zip ~/projects/my-website.zip -icon ~/icons/app-icon.webp -name "MyAwesomeApp"
```

### Step 4: Compilation Process

The tool will automatically:
1. Extract your project files
2. Install your app icon
3. Set your app name
4. Build the APK
5. Sign the APK

<img src="https://github.com/77AXEL/Web2APK/blob/main/images/cap1.png" alt="Build Process" width="600">

### Step 5: Get Your APK

Find your compiled APK in the `dist/` directory:

<img src="https://github.com/77AXEL/Web2APK/blob/main/images/cap4.png" alt="Output APK" width="600">

---

## 📝 Command Line Arguments

| Argument | Description | Required | Example |
|----------|-------------|----------|---------|
| `-zip` | Path to your web project ZIP file | ✅ Yes | `project.zip` |
| `-icon` | Path to your app icon (WebP recommended) | ✅ Yes | `icon.webp` |
| `-name` | Name for your Android application | ✅ Yes | `MyApp` |

---

## 💡 Tips & Best Practices

- ✅ **Use WebP format** for app icons for optimal quality and size
- ✅ **Test your web project** in a browser before conversion
- ✅ **Use relative paths** in your HTML/CSS/JS files
- ✅ **Keep file sizes reasonable** for faster APK generation
- ✅ **Check logs** in the `log/` folder if you encounter issues

---

## 🐛 Troubleshooting

### Build Failures

If the APK build fails, check the log files:
- `log/build.log` - APK compilation errors
- `log/sign.log` - APK signing errors

### Common Issues

**Environment Variables Not Set:**
```
ERROR: JAVA_HOME is not set
ERROR: ANDROID_HOME is not set
```
**Solution:** Install Java JDK and Android SDK, then set the environment variables.

**Icon Not Found:**
```
Error: Icon file not found at 'path/to/icon'
```
**Solution:** Verify the icon path is correct and the file exists.

**ZIP File Invalid:**
```
Error: Invalid zip file
```
**Solution:** Ensure your project is properly compressed as a ZIP file.

---

## 🖥️ Platform Support

| Platform | Status | Notes |
|----------|--------|-------|
| Windows | ✅ Supported | Tested on Windows 10/11 |
| macOS | ✅ Supported | Tested on macOS 11+ |
| Linux | ✅ Supported | Ubuntu, Debian, Kali, Parrot, Arch |

---

## 📄 License

This project is open source and available under the (GPL)[./LICENSE] License.

---

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new features
- Submit pull requests

---

## 📬 Support

If you encounter any issues or have questions:
- Open an [issue](https://github.com/77AXEL/Web2APK/issues)
- Check existing [discussions](https://github.com/77AXEL/Web2APK/discussions)

---

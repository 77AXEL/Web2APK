import os
import sys
if not os.getenv("JAVA_HOME"):
    print("ERROR: JAVA_HOME is not set. Please install Java and set the JAVA_HOME environment variable.")
    sys.exit(1)

if not os.getenv("ANDROID_HOME"):
    print("ERROR: ANDROID_HOME is not set. Please install Android SDK and set the ANDROID_HOME environment variable.")
    sys.exit(1)

import subprocess
import zipfile
import shutil
import argparse
import colorama
import xml.etree.ElementTree as ET
from pathlib import Path

colorama.init(autoreset=True)

def parse_arguments():
    parser = argparse.ArgumentParser(
        description='Build an APK from a web project',
        formatter_class=argparse.RawDescriptionHelpFormatter
    )
    parser.add_argument('-zip', type=str, required=True, help='Path to your front-end web project zip file')
    parser.add_argument('-icon', type=str, required=True, help='Path to your app icon (webp format recommended)')
    parser.add_argument('-name', type=str, required=True, help='Name for your application')
    
    return parser.parse_args()

def unzip_project(zip_file_path):
    print(f"{colorama.Fore.BLUE}  Extracting project files...", end="", flush=True)
    
    try:
        output_path = Path("android/assets")
        output_path.mkdir(parents=True, exist_ok=True)
        
        with zipfile.ZipFile(zip_file_path, 'r') as zip_ref:
            zip_ref.extractall(output_path)
        
        print(f"\r{colorama.Fore.LIGHTGREEN_EX}  Project files extracted successfully")
        return True
    except FileNotFoundError:
        print(f"\r{colorama.Fore.RED}  Error: Zip file not found at '{zip_file_path}'")
        return False
    except zipfile.BadZipFile:
        print(f"\r{colorama.Fore.RED}  Error: Invalid zip file")
        return False
    except Exception as e:
        print(f"\r{colorama.Fore.RED}  Error extracting files: {e}")
        return False

def set_app_icon(icon_path):
    print(f"{colorama.Fore.BLUE}  Installing app icon...", end="", flush=True)
    
    try:
        if not Path(icon_path).exists():
            print(f"\r{colorama.Fore.RED}  Error: Icon file not found at '{icon_path}'")
            return False
        
        mipmap_dirs = [
            "android/res/mipmap-hdpi",
            "android/res/mipmap-mdpi",
            "android/res/mipmap-xhdpi",
            "android/res/mipmap-xxhdpi",
            "android/res/mipmap-xxxhdpi"
        ]
        
        for mipmap_dir in mipmap_dirs:
            Path(mipmap_dir).mkdir(parents=True, exist_ok=True)
            
            ic_launcher = Path(mipmap_dir) / "ic_launcher.webp"
            ic_launcher_round = Path(mipmap_dir) / "ic_launcher_round.webp"
            
            shutil.copy(icon_path, ic_launcher)
            shutil.copy(icon_path, ic_launcher_round)
        
        print(f"\r{colorama.Fore.LIGHTGREEN_EX}  App icon installed successfully")
        return True
    except Exception as e:
        print(f"\r{colorama.Fore.RED}  Error installing icon: {e}")
        return False

def set_app_name(app_name):
    print(f"{colorama.Fore.BLUE}  Setting app name...", end="", flush=True)
    
    try:
        xml_path = Path("android/res/values/strings.xml")
        
        if not xml_path.exists():
            print(f"\r{colorama.Fore.RED}  Error: strings.xml not found")
            return False
        
        tree = ET.parse(xml_path)
        root = tree.getroot()
        
        found = False
        for string_elem in root.findall('string'):
            if string_elem.get('name') == 'app_name':
                string_elem.text = app_name
                found = True
                break
        
        if not found:
            print(f"\r{colorama.Fore.RED}  Error: 'app_name' not found in strings.xml")
            return False
        
        tree.write(xml_path, encoding='utf-8', xml_declaration=True)
        print(f"\r{colorama.Fore.LIGHTGREEN_EX}  App name set to '{app_name}'")
        return True
    except Exception as e:
        print(f"\r{colorama.Fore.RED}  Error setting app name: {e}")
        return False

def build_apk(app_name):
    print(f"{colorama.Fore.BLUE}  Building APK...", end="", flush=True)
    
    try:
        dist_dir = Path("dist")
        dist_dir.mkdir(exist_ok=True)
        
        log_dir = Path("log")
        log_dir.mkdir(exist_ok=True)
        
        apk_path = dist_dir / f"{app_name}.apk"
        command = ['java', '-jar', 'apktool.jar', 'b', 'android', '-o', str(apk_path)]
        
        with open(log_dir / 'build.log', 'w') as log_file:
            result = subprocess.run(command, stdout=log_file, stderr=log_file)
        
        if result.returncode != 0 or not apk_path.exists():
            print(f"\r{colorama.Fore.RED}  Failed to build APK. Check log/build.log for details.")
            return False
        
        print(f"\r{colorama.Fore.LIGHTGREEN_EX}  APK built successfully")
        return True
    except Exception as e:
        print(f"\r{colorama.Fore.RED}  Error building APK: {e}")
        return False

def sign_apk(app_name):
    print(f"{colorama.Fore.BLUE}  Signing APK...", end="", flush=True)
    
    try:
        if not Path("key.jks").exists():
            print(f"\r{colorama.Fore.RED}  Error: Keystore file 'key.jks' not found")
            return False
        
        apk_path = Path("dist") / f"{app_name}.apk"
        command = [
            "jarsigner", "-verbose", "-keystore", "key.jks",
            "-storepass", "000000", str(apk_path), "key0"
        ]
        
        log_dir = Path("log")
        with open(log_dir / 'sign.log', 'w') as log_file:
            result = subprocess.run(command, stdout=log_file, stderr=log_file)
        
        if result.returncode != 0:
            print(f"\r{colorama.Fore.RED}  Failed to sign APK. Check log/sign.log for details.")
            return False
        
        print(f"\r{colorama.Fore.LIGHTGREEN_EX}  APK signed successfully")
        return True
    except Exception as e:
        print(f"\r{colorama.Fore.RED}  Error signing APK: {e}")
        return False

def main():
    print(f"\n{colorama.Fore.CYAN}{'='*50}")
    print(f"{colorama.Fore.CYAN}  APK Builder")
    print(f"{colorama.Fore.CYAN}{'='*50}\n")
    
    try:
        args = parse_arguments()
        print(args)
    except SystemExit:
        return

    print(f"{colorama.Fore.YELLOW}Building APK: {args.name}\n")

    if not unzip_project(args.zip):
        sys.exit(1)
    
    if not set_app_icon(args.icon):
        sys.exit(1)
    
    if not set_app_name(args.name):
        sys.exit(1)
    
    if not build_apk(args.name):
        sys.exit(1)
    
    if not sign_apk(args.name):
        sys.exit(1)
    
    print(f"\n{colorama.Fore.LIGHTGREEN_EX}{'='*50}")
    print(f"{colorama.Fore.LIGHTGREEN_EX}  APK created successfully!")
    print(f"{colorama.Fore.LIGHTGREEN_EX}  Location: dist/{args.name}.apk")
    print(f"{colorama.Fore.LIGHTGREEN_EX}{'='*50}\n")

main()
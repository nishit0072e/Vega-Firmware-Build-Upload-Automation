# CMake-Makefile-Firmware-Automation 🚀

This repository provides a streamlined workflow for building C programs using **CMake** and **Ninja** to generate ELF files, with automated firmware uploading using **Makefile** and **batch scripts**. It eliminates the need for manually executing commands, making the development process faster and more efficient.

## 🧑‍🏫 Tutorial
[![Tutorial](https://img.shields.io/badge/Tutorial-CircuitState-blue?style=flat)](https://www.circuitstate.com/tutorials/creating-c-c-projects-for-cdac-aries-v3-thejas32-microcontroller-board-using-vega-sdk/#Creating_Project)
[![Taurus SDK](https://img.shields.io/badge/Taurus_SDK-View-orange?style=flat)](https://github.com/rnayabed/taurus/tree/master)

Click on the Tutorial badge to learn how to create C/C++ projects for the C-DAC Aries V3 THEJAS32 Microcontroller Board using Taurus SDK developed by @[rnayabed](https://github.com/rnayabed) (a fork of Vega SDK with further improvements, click on the Taurus badge to view the repository).
## 🔥 Features of this automation script

- ✅ **Automated Build System** – Uses CMake and Ninja for compiling C programs.
- ✅ **Flexible Firmware Upload** – Supports both **XMODEM (RAM upload)** and **Flasher (Flash memory upload)**.
- ✅ **Makefile-Based Automation** – Run `make build` to compile and `make upload` to flash firmware interactively.
- ✅ **Batch Script Integration** – Ensures seamless execution of upload commands without navigating directories.
- ✅ **Dynamic Project Support** – Automatically detects and handles different project folders and ELF files.

## 🚀 Usage

### **Build the Project**

```sh
make build
```
### **Upload the Firmware (Interactive Selection)**
```sh
make upload
```
Before Running ```make upload``` change COM PORT number & uploading tools locations upon your system. Given COM Port and locations are my system specific.
Upon Running this command A Prompt will be generated for selecting the uplaoding method:
- 1️⃣ **Upload via XMODEM**
- 2️⃣ **Upload via FLASHER**

### **Cleaning the Build Directory**
```sh
make clean
```

## 📂 Project Structure

```bash
├── project-folder/
│   ├── build/              # Build directory (Generated)
|   ├── <source_file.c>
│   ├── CMakeLists.txt      # CMake configuration
│   ├── Makefile            # Build & Upload automation
│   ├── upload.bat          # Batch script for firmware upload

```

## 💡 Why Use This?

- Saves time by automating building & uploading.
- Works seamlessly on Windows.
- No need to manually navigate folders or run multiple commands.

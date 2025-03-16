@echo off
setlocal enabledelayedexpansion

:: Configuration
set PORT=COM5
set FLASHER_DIR=C:\RISCV\vega-flasher-windows
set XMODEM_DIR=C:\RISCV\vega-xmodem-windows
set FLASHER=flasher.bat
set XMODEM=xmodem.bat

:: Check for ELF file argument
if "%~1"=="" (
    echo Error: No ELF file provided.
    exit /b 1
)

set ELF_FILE=%~1

:: User selection for upload method
echo Select upload method:
echo 1) Upload via XMODEM
echo 2) Upload via FLASHER
set /p CHOICE=Enter choice (1 or 2): 

if "%CHOICE%"=="1" (
    echo Uploading firmware via XMODEM...
    cd /d "%XMODEM_DIR%"
    .\%XMODEM% %PORT% "%ELF_FILE%" > nul 2>&1
    echo Uploading Done!
    if errorlevel 1 echo Upload failed!
    exit /b %errorlevel%
) else if "%CHOICE%"=="2" (
    echo Uploading firmware to Flash...
    cd /d "%FLASHER_DIR%"
    .\%FLASHER% %PORT% "%ELF_FILE%" > nul 2>&1
    echo Uploading Done!
    if errorlevel 1 echo Upload failed!
    exit /b %errorlevel%
) else (
    echo Invalid choice. Exiting.
    exit /b 1
)

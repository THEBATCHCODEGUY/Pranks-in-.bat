@echo off
title Chrome Prank Script
color 0A

echo ========================================
echo Chrome Prank Script is now running...
echo Hold down the / key to allow Chrome to stay open.
echo Press Ctrl+C to stop the script.
echo ========================================

:loop
:: Check if Chrome is running
tasklist /FI "IMAGENAME eq chrome.exe" 2>NUL | find /I "chrome.exe" >NUL
if %ERRORLEVEL% == 0 (
    :: Check if / key is held down
    choice /C / /N /T 1 /D / >NUL
    if %ERRORLEVEL% NEQ 1 (
        :: Close Chrome if / key is not held down
        taskkill /F /IM chrome.exe
    )
)

:: Pause for a short period to reduce CPU usage
ping 127.0.0.1 -n 2 >NUL

goto loop

@echo off
title Chrome Prank
color 0C

echo ========================================
echo Chrome Prank is now running...
echo Press Ctrl+C to stop the script.
echo ========================================

:loop
:: Wait for 5 seconds
echo Waiting for 5 seconds...
timeout /t 5 /nobreak >NUL

:: Open a new Chrome window
echo Opening a new Chrome window...
start chrome.exe

goto loop

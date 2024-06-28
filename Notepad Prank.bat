@echo off
title Notepad Prank
color 0C

echo ========================================
echo Notepad Prank is now running...
echo Press Ctrl+C to stop the script.
echo ========================================

:loop
:: Open a new Notepad window
start notepad.exe

:: Wait a moment to allow Notepad to open
timeout /t 2 /nobreak >NUL

:: Type random text into the Notepad window
powershell -command "$wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('Untitled - Notepad'); $wshell.SendKeys('This is a prank!'); $wshell.SendKeys('{ENTER}'); $wshell.SendKeys('Beware of the Notepad invasion!');"

:: Wait for a few seconds before repeating
timeout /t 5 /nobreak >NUL

goto loop

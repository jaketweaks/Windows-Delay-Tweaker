@echo off
title Restore Windows Defaults - Undo Tweaks
color 0C

echo Restoring system settings to defaults...

:: Remove registry tweaks (example keys)
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /f >nul 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\hpet" /f >nul 2>&1

:: Enable common services back (example)
sc config DiagTrack start= auto
sc start DiagTrack
sc config WMPNetworkSvc start= manual
sc start WMPNetworkSvc

:: Reset Xbox Game Bar settings (example)
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "GameDVR_Enabled" /t REG_DWORD /d 1 /f

:: Reset power plan to Balanced
powercfg /setactive SCHEME_BALANCED

echo Restore complete. Please reboot your PC to apply changes.
pause

@echo off
setlocal enabledelayedexpansion

:: 1. IP-Adresse herausfinden (erste nicht-Loopback IPv4-Adresse)
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /R "IPv4.*[0-9]\."') do set IP=%%A
set IP=%IP:~1%

:: 2. Datei "server.properties" in der aktuellen Zeile ändern
set "file=server.properties"
set "tempfile=server_temp.properties"
set "found=false"

:: 3. Datei Zeile für Zeile durchgehen und die IP-Adresse aktualisieren
(for /f "tokens=*" %%L in (%file%) do (
    echo %%L | findstr /B /C:"server-ip=" >nul
    if not errorlevel 1 (
        echo server-ip=%IP% >> %tempfile%
        set found=true
    ) else (
        echo %%L >> %tempfile%
    )
))

:: 4. Falls "server-ip=" nicht vorhanden war, am Ende hinzufügen
if "%found%"=="false" echo server-ip=%IP% >> %tempfile%

:: 5. Originaldatei ersetzen
move /Y %tempfile% %file%

echo [INFO] Server-IP wurde auf %IP% aktualisiert!
pause


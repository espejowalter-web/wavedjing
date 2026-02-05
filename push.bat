@echo off
title WaveDjing - Git Push
echo ========================================
echo   WaveDjing - Aenderungen pushen
echo ========================================
echo.

cd /d "%~dp0"

echo Aktuelle Aenderungen:
echo ----------------------------------------
git status --short
echo ----------------------------------------
echo.

set /p msg="Commit-Nachricht eingeben: "

if "%msg%"=="" (
    echo Keine Nachricht eingegeben. Abbruch.
    pause
    exit /b
)

echo.
echo [1/3] Dateien hinzufuegen...
git add .

echo [2/3] Commit erstellen...
git commit -m "%msg%"

echo [3/3] Push zu GitHub...
git push

echo.
echo ========================================
echo   Fertig! Netlify deployed automatisch.
echo ========================================
pause

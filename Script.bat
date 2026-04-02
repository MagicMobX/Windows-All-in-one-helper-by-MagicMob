@echo off
title Magic Script All In One Place
color 0A

:: ==== ADMIN CHECK ====
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this as admin 
    exit
)

:menu
:: ==== UI ====
cls
echo =========================================
echo       MAGIC SCRIPT ALL IN ONE PLACE
echo =========================================
echo.
echo 1. Run Windows Activator
echo 2. Run Windows Debloat
echo 3. Exit
echo.

set /p choice=Choose option:

:: ==== OPTIONS ====
if "%choice%"=="1" goto Win_Activator
if "%choice%"=="2" goto Win_Debloat
if "%choice%"=="3" goto Exit

:Win_Activator
echo.
echo Running Activation Script...
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://get.activated.win | iex"
echo.
echo Activation script completed!
echo.
pause
goto menu

:Win_Debloat
echo.
echo Running Debloat Script...
powershell -NoProfile -ExecutionPolicy Bypass -Command "& ([scriptblock]::Create((irm \"https://debloat.raphi.re/\")))"
echo.
echo Debloat script completed!
echo.
pause
goto menu

:Exit
exit

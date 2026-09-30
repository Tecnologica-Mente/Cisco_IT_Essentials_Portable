@echo off
setlocal EnableExtensions EnableDelayedExpansion
title Cisco IT Essentials v4.0 - Portable Loader
color 0B

:: ============================================================
::              CISCO IT ESSENTIALS v4.0
::                 PORTABLE LOADER
::              WITH PORTABLE DIAGNOSTICS
:: ============================================================

set "BASE=%~dp0"
set "FLASH=%BASE%Flash\flashplayer_32_sa.exe"
set "DESKTOP=%BASE%VirtualDesktop"
set "LAPTOP=%BASE%VirtualLaptop"

:: Simulator parameters
set "LESSON=1"
set "MODE=0"

:: Project information
set "AUTHOR=Tecnologica-Mente"
set "PROJECT_URL=https://github.com/Tecnologica-Mente/Cisco_IT_Essentials_Portable"


:: ============================================================
:: CHECK FLASH PLAYER
:: ============================================================

if not exist "%FLASH%" goto FLASH_ERROR


:: ============================================================
:: MAIN MENU
:: ============================================================

:MENU
cls

echo.
echo  ==========================================================
echo.
echo              CISCO IT ESSENTIALS v4.0
echo                  PORTABLE LOADER
echo.
echo  ==========================================================
echo.

echo       SIMULATOR STATUS:
echo.

if exist "%DESKTOP%\RootMovie.swf" (
    echo       [OK] Virtual Desktop
) else (
    echo       [--] Virtual Desktop not available
)

if exist "%LAPTOP%\RootMovie.swf" (
    echo       [OK] Virtual Laptop
) else (
    echo       [--] Virtual Laptop not available
)

echo.
echo  ----------------------------------------------------------
echo.
echo       [1]  Launch Virtual Desktop
echo       [2]  Launch Virtual Laptop
echo.
echo       [3]  Diagnostics / Information
echo.
echo       [0]  Exit
echo.
echo  ==========================================================
echo.

set "SCELTA="
set /p "SCELTA=       Select an option: "

if "%SCELTA%"=="1" goto CHECK_DESKTOP
if "%SCELTA%"=="2" goto CHECK_LAPTOP
if "%SCELTA%"=="3" goto DIAGNOSTICA
if "%SCELTA%"=="0" goto EXIT

echo.
echo       Invalid selection.
timeout /t 2 /nobreak >nul
goto MENU


:: ============================================================
:: CHECK VIRTUAL DESKTOP
:: ============================================================

:CHECK_DESKTOP

if not exist "%DESKTOP%\RootMovie.swf" (
    cls
    echo.
    echo  ==========================================================
    echo.
    echo              VIRTUAL DESKTOP NOT FOUND
    echo.
    echo  ==========================================================
    echo.
    echo       RootMovie.swf not found in:
    echo.
    echo       %DESKTOP%
    echo.
    echo       Check the folder structure.
    echo.
    pause
    goto MENU
)

goto START_DESKTOP


:: ============================================================
:: LAUNCH VIRTUAL DESKTOP
:: ============================================================

:START_DESKTOP

cls

echo.
echo  ==========================================================
echo.
echo              LAUNCHING VIRTUAL DESKTOP v4.0
echo.
echo  ==========================================================
echo.
echo       Flash Player:
echo       %FLASH%
echo.
echo       Parameters:
echo       lesson=%LESSON%^&mode=%MODE%
echo.
echo       Starting...
echo.

cd /d "%DESKTOP%"
"%FLASH%" "RootMovie.swf?lesson=%LESSON%&mode=%MODE%"

echo.
echo  ==========================================================
echo.
echo              Virtual Desktop terminated.
echo.
echo  ==========================================================
echo.
echo       Returning to menu...
timeout /t 2 /nobreak >nul
goto MENU


:: ============================================================
:: CHECK VIRTUAL LAPTOP
:: ============================================================

:CHECK_LAPTOP

if not exist "%LAPTOP%\RootMovie.swf" (
    cls
    echo.
    echo  ==========================================================
    echo.
    echo              VIRTUAL LAPTOP NOT FOUND
    echo.
    echo  ==========================================================
    echo.
    echo       RootMovie.swf not found in:
    echo.
    echo       %LAPTOP%
    echo.
    echo       Check the folder structure.
    echo.
    pause
    goto MENU
)

goto START_LAPTOP


:: ============================================================
:: LAUNCH VIRTUAL LAPTOP
:: ============================================================

:START_LAPTOP

cls

echo.
echo  ==========================================================
echo.
echo              LAUNCHING VIRTUAL LAPTOP v4.0
echo.
echo  ==========================================================
echo.
echo       Flash Player:
echo       %FLASH%
echo.
echo       Parameters:
echo       lesson=%LESSON%^&mode=%MODE%
echo.
echo       Starting...
echo.

cd /d "%LAPTOP%"
"%FLASH%" "RootMovie.swf?lesson=%LESSON%&mode=%MODE%"

echo.
echo  ==========================================================
echo.
echo              Virtual Laptop terminated.
echo.
echo  ==========================================================
echo.
echo       Returning to menu...
timeout /t 2 /nobreak >nul
goto MENU


:: ============================================================
:: DIAGNOSTICS / INFORMATION
:: ============================================================

:DIAGNOSTICA

cls

echo.
echo  ==========================================================
echo.
echo                  DIAGNOSTICS / INFORMATION
echo.
echo  ==========================================================
echo.

:: ------------------------------------------------------------
:: Project information
:: ------------------------------------------------------------

echo  [ LOADER INFORMATION ]
echo.
echo       Author:              %AUTHOR%
echo       Project:
echo       %PROJECT_URL%
echo.

echo  ----------------------------------------------------------
echo.

:: ------------------------------------------------------------
:: Loader
:: ------------------------------------------------------------

echo  [ LOADER ]
echo.
echo       Path:
echo       %BASE%
echo.

:: ------------------------------------------------------------
:: Windows
:: ------------------------------------------------------------

echo  [ SYSTEM ]
echo.

for /f "tokens=*" %%A in ('ver') do echo       %%A

echo.

:: ------------------------------------------------------------
:: Flash Player
:: ------------------------------------------------------------

echo  [ FLASH PLAYER ]
echo.

if exist "%FLASH%" (
    echo       Status:             [OK]
    echo       File:               flashplayer_32_sa.exe

    for %%A in ("%FLASH%") do (
        echo       Size:               %%~zA bytes
    )

    echo.
    echo       File version:

    set "FLASHVERSION="

    for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "(Get-Item '%FLASH%').VersionInfo.FileVersion" 2^>nul`) do (
        set "FLASHVERSION=%%A"
    )

    if defined FLASHVERSION (
        echo       !FLASHVERSION!
    ) else (
        echo       Not available
    )

) else (
    echo       Status:             [ERROR]
    echo       Flash Player not found
)

echo.

:: ------------------------------------------------------------
:: Virtual Desktop
:: ------------------------------------------------------------

echo  [ VIRTUAL DESKTOP ]
echo.

if exist "%DESKTOP%\RootMovie.swf" (

    echo       Status:             [OK]
    echo       Folder:
    echo       %DESKTOP%

    for %%A in ("%DESKTOP%\RootMovie.swf") do (
        echo       RootMovie.swf:      %%~zA bytes
    )

) else (

    echo       Status:             [NOT AVAILABLE]
    echo       Expected folder:
    echo       %DESKTOP%

)

echo.

:: ------------------------------------------------------------
:: Virtual Laptop
:: ------------------------------------------------------------

echo  [ VIRTUAL LAPTOP ]
echo.

if exist "%LAPTOP%\RootMovie.swf" (

    echo       Status:             [OK]
    echo       Folder:
    echo       %LAPTOP%

    for %%A in ("%LAPTOP%\RootMovie.swf") do (
        echo       RootMovie.swf:      %%~zA bytes
    )

) else (

    echo       Status:             [NOT AVAILABLE]
    echo       Expected folder:
    echo       %LAPTOP%

)

echo.

:: ------------------------------------------------------------
:: SWF Parameters
:: ------------------------------------------------------------

echo  [ SIMULATOR PARAMETERS ]
echo.

echo       lesson = %LESSON%
echo       mode   = %MODE%

echo.

:: ------------------------------------------------------------
:: General status
:: ------------------------------------------------------------

echo  [ GENERAL STATUS ]
echo.

set "ERRORI=0"

if not exist "%FLASH%" (
    echo       [ERROR] Flash Player missing
    set /a ERRORI+=1
) else (
    echo       [OK] Flash Player
)

if exist "%DESKTOP%\RootMovie.swf" (
    echo       [OK] Virtual Desktop
) else (
    echo       [--] Virtual Desktop not installed
)

if exist "%LAPTOP%\RootMovie.swf" (
    echo       [OK] Virtual Laptop
) else (
    echo       [--] Virtual Laptop not installed
)

echo.

if "%ERRORI%"=="0" (
    echo       Loading system: OK
) else (
    echo       Loading system: ERROR
)

echo.
echo  ==========================================================
echo.
echo       Press any key to return to the menu...
pause >nul
goto MENU


:: ============================================================
:: FLASH PLAYER ERROR
:: ============================================================

:FLASH_ERROR

cls

echo.
echo  ==========================================================
echo.
echo                    ERROR
echo.
echo  ==========================================================
echo.
echo       Flash Player not found.
echo.
echo       Required file:
echo.
echo       %FLASH%
echo.
echo  ----------------------------------------------------------
echo.
echo       Expected structure:
echo.
echo       Loader.bat
echo       |
echo       +-- Flash
echo       |   +-- flashplayer_32_sa.exe
echo       |
echo       +-- VirtualDesktop
echo       |   +-- RootMovie.swf
echo       |
echo       +-- VirtualLaptop
echo           +-- RootMovie.swf
echo.
echo  ==========================================================
echo.
pause
exit /b


:: ============================================================
:: EXIT
:: ============================================================

:EXIT

cls

echo.
echo  ==========================================================
echo.
echo             CISCO IT ESSENTIALS v4.0
echo.
echo                  Loader closed.
echo.
echo  ==========================================================
echo.

timeout /t 1 /nobreak >nul
exit /b
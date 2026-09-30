@echo off
setlocal EnableExtensions EnableDelayedExpansion
title Cisco IT Essentials v4.0 - Portable Loader
color 0B

:: ============================================================
::              CISCO IT ESSENTIALS v4.0
::                 PORTABLE LOADER
::              CON DIAGNOSTICA PORTABLE
:: ============================================================

set "BASE=%~dp0"
set "FLASH=%BASE%Flash\flashplayer_32_sa.exe"
set "DESKTOP=%BASE%VirtualDesktop"
set "LAPTOP=%BASE%VirtualLaptop"

:: Parametri dei simulatori
set "LESSON=1"
set "MODE=0"

:: Informazioni sul progetto
set "AUTHOR=Tecnologica-Mente"
set "PROJECT_URL=https://github.com/Tecnologica-Mente/Cisco_IT_Essentials_Portable"


:: ============================================================
:: CONTROLLO FLASH PLAYER
:: ============================================================

if not exist "%FLASH%" goto FLASH_ERROR


:: ============================================================
:: MENU PRINCIPALE
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

echo       STATO DEI SIMULATORI:
echo.

if exist "%DESKTOP%\RootMovie.swf" (
    echo       [OK] Virtual Desktop
) else (
    echo       [--] Virtual Desktop non disponibile
)

if exist "%LAPTOP%\RootMovie.swf" (
    echo       [OK] Virtual Laptop
) else (
    echo       [--] Virtual Laptop non disponibile
)

echo.
echo  ----------------------------------------------------------
echo.
echo       [1]  Avvia Virtual Desktop
echo       [2]  Avvia Virtual Laptop
echo.
echo       [3]  Diagnostica / Informazioni
echo.
echo       [0]  Esci
echo.
echo  ==========================================================
echo.

set "SCELTA="
set /p "SCELTA=       Seleziona una voce: "

if "%SCELTA%"=="1" goto CHECK_DESKTOP
if "%SCELTA%"=="2" goto CHECK_LAPTOP
if "%SCELTA%"=="3" goto DIAGNOSTICA
if "%SCELTA%"=="0" goto EXIT

echo.
echo       Scelta non valida.
timeout /t 2 /nobreak >nul
goto MENU


:: ============================================================
:: CONTROLLO VIRTUAL DESKTOP
:: ============================================================

:CHECK_DESKTOP

if not exist "%DESKTOP%\RootMovie.swf" (
    cls
    echo.
    echo  ==========================================================
    echo.
    echo              VIRTUAL DESKTOP NON TROVATO
    echo.
    echo  ==========================================================
    echo.
    echo       RootMovie.swf non trovato in:
    echo.
    echo       %DESKTOP%
    echo.
    echo       Controlla la struttura delle cartelle.
    echo.
    pause
    goto MENU
)

goto START_DESKTOP


:: ============================================================
:: AVVIO VIRTUAL DESKTOP
:: ============================================================

:START_DESKTOP

cls

echo.
echo  ==========================================================
echo.
echo              AVVIO VIRTUAL DESKTOP v4.0
echo.
echo  ==========================================================
echo.
echo       Flash Player:
echo       %FLASH%
echo.
echo       Parametri:
echo       lesson=%LESSON%^&mode=%MODE%
echo.
echo       Avvio...
echo.

cd /d "%DESKTOP%"
"%FLASH%" "RootMovie.swf?lesson=%LESSON%&mode=%MODE%"

echo.
echo  ==========================================================
echo.
echo              Virtual Desktop terminato.
echo.
echo  ==========================================================
echo.
echo       Ritorno al menu...
timeout /t 2 /nobreak >nul
goto MENU


:: ============================================================
:: CONTROLLO VIRTUAL LAPTOP
:: ============================================================

:CHECK_LAPTOP

if not exist "%LAPTOP%\RootMovie.swf" (
    cls
    echo.
    echo  ==========================================================
    echo.
    echo              VIRTUAL LAPTOP NON TROVATO
    echo.
    echo  ==========================================================
    echo.
    echo       RootMovie.swf non trovato in:
    echo.
    echo       %LAPTOP%
    echo.
    echo       Controlla la struttura delle cartelle.
    echo.
    pause
    goto MENU
)

goto START_LAPTOP


:: ============================================================
:: AVVIO VIRTUAL LAPTOP
:: ============================================================

:START_LAPTOP

cls

echo.
echo  ==========================================================
echo.
echo              AVVIO VIRTUAL LAPTOP v4.0
echo.
echo  ==========================================================
echo.
echo       Flash Player:
echo       %FLASH%
echo.
echo       Parametri:
echo       lesson=%LESSON%^&mode=%MODE%
echo.
echo       Avvio...
echo.

cd /d "%LAPTOP%"
"%FLASH%" "RootMovie.swf?lesson=%LESSON%&mode=%MODE%"

echo.
echo  ==========================================================
echo.
echo              Virtual Laptop terminato.
echo.
echo  ==========================================================
echo.
echo       Ritorno al menu...
timeout /t 2 /nobreak >nul
goto MENU


:: ============================================================
:: DIAGNOSTICA / INFORMAZIONI
:: ============================================================

:DIAGNOSTICA

cls

echo.
echo  ==========================================================
echo.
echo                  DIAGNOSTICA / INFORMAZIONI
echo.
echo  ==========================================================
echo.

:: ------------------------------------------------------------
:: Informazioni sul progetto
:: ------------------------------------------------------------

echo  [ INFORMAZIONI SUL LOADER ]
echo.
echo       Autore:             %AUTHOR%
echo       Progetto:
echo       %PROJECT_URL%
echo.

echo  ----------------------------------------------------------
echo.

:: ------------------------------------------------------------
:: Loader
:: ------------------------------------------------------------

echo  [ LOADER ]
echo.
echo       Percorso:
echo       %BASE%
echo.

:: ------------------------------------------------------------
:: Windows
:: ------------------------------------------------------------

echo  [ SISTEMA ]
echo.

for /f "tokens=*" %%A in ('ver') do echo       %%A

echo.

:: ------------------------------------------------------------
:: Flash Player
:: ------------------------------------------------------------

echo  [ FLASH PLAYER ]
echo.

if exist "%FLASH%" (
    echo       Stato:              [OK]
    echo       File:               flashplayer_32_sa.exe

    for %%A in ("%FLASH%") do (
        echo       Dimensione:          %%~zA byte
    )

    echo.
    echo       Versione file:

    set "FLASHVERSION="

    for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "(Get-Item '%FLASH%').VersionInfo.FileVersion" 2^>nul`) do (
        set "FLASHVERSION=%%A"
    )

    if defined FLASHVERSION (
        echo       !FLASHVERSION!
    ) else (
        echo       Non disponibile
    )

) else (
    echo       Stato:              [ERRORE]
    echo       Flash Player non trovato
)

echo.

:: ------------------------------------------------------------
:: Virtual Desktop
:: ------------------------------------------------------------

echo  [ VIRTUAL DESKTOP ]
echo.

if exist "%DESKTOP%\RootMovie.swf" (

    echo       Stato:              [OK]
    echo       Cartella:
    echo       %DESKTOP%

    for %%A in ("%DESKTOP%\RootMovie.swf") do (
        echo       RootMovie.swf:       %%~zA byte
    )

) else (

    echo       Stato:              [NON DISPONIBILE]
    echo       Cartella prevista:
    echo       %DESKTOP%

)

echo.

:: ------------------------------------------------------------
:: Virtual Laptop
:: ------------------------------------------------------------

echo  [ VIRTUAL LAPTOP ]
echo.

if exist "%LAPTOP%\RootMovie.swf" (

    echo       Stato:              [OK]
    echo       Cartella:
    echo       %LAPTOP%

    for %%A in ("%LAPTOP%\RootMovie.swf") do (
        echo       RootMovie.swf:       %%~zA byte
    )

) else (

    echo       Stato:              [NON DISPONIBILE]
    echo       Cartella prevista:
    echo       %LAPTOP%

)

echo.

:: ------------------------------------------------------------
:: Parametri SWF
:: ------------------------------------------------------------

echo  [ PARAMETRI SIMULATORI ]
echo.

echo       lesson = %LESSON%
echo       mode   = %MODE%

echo.

:: ------------------------------------------------------------
:: Stato generale
:: ------------------------------------------------------------

echo  [ STATO GENERALE ]
echo.

set "ERRORI=0"

if not exist "%FLASH%" (
    echo       [ERRORE] Flash Player mancante
    set /a ERRORI+=1
) else (
    echo       [OK] Flash Player
)

if exist "%DESKTOP%\RootMovie.swf" (
    echo       [OK] Virtual Desktop
) else (
    echo       [--] Virtual Desktop non installato
)

if exist "%LAPTOP%\RootMovie.swf" (
    echo       [OK] Virtual Laptop
) else (
    echo       [--] Virtual Laptop non installato
)

echo.

if "%ERRORI%"=="0" (
    echo       Sistema di caricamento: OK
) else (
    echo       Sistema di caricamento: ERRORE
)

echo.
echo  ==========================================================
echo.
echo       Premi un tasto per tornare al menu...
pause >nul
goto MENU


:: ============================================================
:: ERRORE FLASH PLAYER
:: ============================================================

:FLASH_ERROR

cls

echo.
echo  ==========================================================
echo.
echo                    ERRORE
echo.
echo  ==========================================================
echo.
echo       Flash Player non trovato.
echo.
echo       File richiesto:
echo.
echo       %FLASH%
echo.
echo  ----------------------------------------------------------
echo.
echo       Struttura prevista:
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
:: USCITA
:: ============================================================

:EXIT

cls

echo.
echo  ==========================================================
echo.
echo             CISCO IT ESSENTIALS v4.0
echo.
echo                  Loader chiuso.
echo.
echo  ==========================================================
echo.

timeout /t 1 /nobreak >nul
exit /b

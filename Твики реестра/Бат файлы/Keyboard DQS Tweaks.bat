@echo off       
:SexCleaner
echo off
shift /0
mode 128,33
title Venix Keyboard DQS Tweaks
cd %systemroot%\system32
call :IsAdmin
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
goto :ABC
)

:ABC       
cls    
setlocal enabledelayedexpansion
chcp 65001 >nul 2>&1
cd /d "%~dp0"
goto :menu


:menu
cls
color d   
mode 78, 23
echo.
echo.
echo      [90m██[33m╗   [90m██[33m╗[90m████████[33m╗[90m██[33m╗    [90m██[33m╗[90m███████[33m╗ [90m█████[33m╗ [90m██[33m╗  [90m██[33m╗[90m███████[33m╗
echo      [90m██[33m║   [90m██[33m║[33m╚══[90m██[33m╔══╝[90m██[33m║    [90m██[33m║[90m██[33m╔════╝[90m██[33m╔══[90m██[33m╗[90m██[33m║ [90m██[33m╔╝[90m██[33m╔════╝
echo      [90m██[33m║   [90m██[33m║   [90m██[33m║   [90m██[33m║ [90m█[33m╗[90m ██[33m║[90m█████[33m╗  [90m███████[33m║[90m█████[33m╔╝ [90m███████[33m╗
echo      [33m╚[90m██[33m╗[90m ██[33m╔[33m╝   [90m██[33m║   [90m██[33m║[90m███[33m╗[90m██[33m║[90m██[33m╔══╝  [90m██[33m╔══[90m██[33m║[90m██[33m╔═[90m██[33m╗ ╚════[90m██[33m║
echo       [33m╚[90m████[33m╔[33m╝    [90m██[33m║   ╚[90m███[33m╔[90m███[33m╔╝[90m███████[33m╗[90m██[33m║  [90m██[33m║[90m██[33m║  [90m██[33m╗[90m███████[33m║
echo        [33m╚═══[33m╝     ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝  
echo.   
call :ColorText 5 "  B"    
call :ColorText 5 "y"    
call :ColorText 5 " T"       
call :ColorText 5 "h"    
call :ColorText 5 "e"    
call :ColorText 6 " V"    
call :ColorText 6 "e" 
call :ColorText 6 "n"       
call :ColorText 6 "i"    
call :ColorText 6 "x"    
call :ColorText 5 " T" 
call :ColorText 5 "e" 
call :ColorText 5 "a" 
call :ColorText 5 "m"  
echo.                          
call :ColorText 88 "=============================================================================="  
echo.    
call :ColorText 0 "                    ["    
call :ColorText 4 " 1"    
call :ColorText 0 " ]"    
call :ColorText 5 " K"    
call :ColorText 5 "E"    
call :ColorText 5 "Y"       
call :ColorText 5 "B"    
call :ColorText 5 "O"
call :ColorText 5 "A"    
call :ColorText 5 "R"
call :ColorText 5 "D"        
call :ColorText 5 " D"    
call :ColorText 5 "Q" 
call :ColorText 5 "S"       
call :ColorText 5 " T"  
call :ColorText 5 "W"       
call :ColorText 5 "E" 
call :ColorText 5 "A"       
call :ColorText 5 "K" 
call :ColorText 5 "S"                    
echo.
echo.
call :ColorText 88 "=============================================================================="                        
echo.
set choice=
set /p "choice=[92m 
if "!choice!"=="1" goto :keyboardtweaksdqs                                           "

:keyboardtweaksdqs
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "20" /f
cls
goto menu

:ColorText    
echo off    
<nul set /p ".=%DEL%" > "%~2"    
findstr /v /a:%1 /R "^$" "%~2" nul    
del "%~2" > nul 2>&1    
goto :eof 

@echo off
Title RPG V2 Personalized Launcher
cd ..
cd 2.3.2.5_SCRIPTS

SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

echo(
call :ColorText 4e "Version 2.1.9.8"

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1

Timeout 5
:Failure
echo .
set /p answer=Do You Want To Run The Game? (Y/N)
if /i {%answer%}=={Y} (Goto :Yes)
if /i {%answer%}=={N} (Goto :No)
Goto :Failure

:Yes
echo .
echo Launching Game In 10 Seconds...
Timeout 10
start RPG_V2.vbs
Exit

:No
echo .
echo Exiting In 5 Seconds...
Timeout 5
Exit
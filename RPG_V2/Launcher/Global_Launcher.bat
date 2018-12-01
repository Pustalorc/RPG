@echo off
Title RPG V2 Globalized Launcher
cd ..

SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

echo(
call :ColorText 4e "Global Launcher Version 2.3"

:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1

Timeout 5
:Failure
echo .
set /p answer=Which Version Do You Want To Run? (2.1.9.8/2.2.1.5/2.3.1.3/2.3.2.1/2.3.2.5/BETA/LATEST)
if /i {%answer%}=={2.1.9.8} (Goto :2.1.9.8)
if /i {%answer%}=={2.2.1.5} (Goto :2.2.1.5)
if /i {%answer%}=={2.3.1.3} (Goto :2.3.1.3)
if /i {%answer%}=={2.3.2.1} (Goto :2.3.2.1)
if /i {%answer%}=={2.3.2.5} (Goto :2.3.2.5)
if /i {%answer%}=={BETA} (Goto :Beta)
if /i {%answer%}=={LATEST} (Goto :Latest)
Goto :Failure

:2.1.9.8
echo .
echo Launching Game In 10 Seconds... (Version 2.1.9.8)
Timeout 10
cd 2.1.9.8_SCRIPTS
start RPG_V2.vbs
Exit

:2.2.1.5
echo .
echo Launching Game In 10 Seconds... (Version 2.2.1.5)
Timeout 10
cd 2.2.1.5_SCRIPTS
start RPG_V2.vbs
Exit

:2.3.1.3
echo .
echo Launching Game In 10 Seconds... (Version 2.3.1.3)
Timeout 10
cd 2.3.1.3_SCRIPTS
start RPG_V2.vbs
Exit

:2.3.2.1
echo .
echo Launching Game In 10 Seconds... (Version 2.3.2.1)
Timeout 10
cd 2.3.2.1_SCRIPTS
start RPG_V2.vbs
Exit

:2.3.2.5
echo .
echo Launching Game In 10 Seconds... (Version 2.3.2.5)
Timeout 10
cd 2.3.2.5_SCRIPTS
start RPG_V2.vbs
Exit

:Beta
set /p answer=This Is The Version That I Edit, Are You Sure You Want To Launch? (Y/N)
if /i {%answer%}=={Y} (Goto :BetaYes)
if /i {%answer%}=={N} (Goto :BetaNo)
Goto :Beta

:BetaYes
echo .
echo Launching Game In 10 Seconds... (Version BETA)
Timeout 10
cd BETA_SCRIPTS
start RPG_V2.vbs
Exit

:BetaNo
echo .
echo Exiting Launcher In 5 Seconds...
Timeout 5
Exit

:Latest
echo .
echo Launching Game In 10 Seconds... (Version LATEST)
Timeout 10
cd LATEST_SCRIPTS
Start RPG_V2.vbs
Exit

:NotDone
echo .
echo This Version Isnt Done, Exiting In 5 Seconds.
Timeout 5
Exit
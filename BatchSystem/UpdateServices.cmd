@echo off
setlocal EnableDelayedExpansion

if /i "%~1"=="--help" (
	echo.
	echo.
	echo.XaremOS - Updater ( Update Services )
	echo.
	echo.Syntax:
	echo.
	echo.XaremOS Update [--skip]
	echo.
	echo.Example:
	echo.
	echo.XaremOS Update
	echo.
	echo.Will Update the XaremOS to the latest version, of XaremOS
	echo.
	echo.Hills not-copyable. ^(c^) 2024 Hills system/software.
	exit /b
)
title The update services... XaremOS Updater
echo Checking for updates...
set skipprompt=0
if /i "%~1"=="--skip" set skipprompt=1
cd ..
set "files=sys.bat recover.bat box.bat" & cd krnsys & set "files=kernelsys.bat boot.png mddbootloadernew.bat systemconfiguration12.bat" & cd .. & set "files=databases.ver xaremfiles.txt"

set "outdir=!TMP!\$XRR-UDA"
md "!outdir!" >nul 2>&1

(curl -V > nul 2>&1 && set "hasCurl=1) || set "hasCurl=0"
for %%A in ("databases.ver" "xaremfiles.txt") do (
	if exist "!outdir!\%%~A" del "!outdir!\%%~A~" /q > nul 2>&1
	call :downloadcv "%%~A" "!outdir!\%%~A" --silent
)
if exist "!outdir!\xaremfiles.txt" set /p files=<"!outdir!\xaremfiles.txt"
if not exist "!outdir!\databases.ver" (
	echo Error (0x000122222f) Unable to retrieve data of this update, you are connected to internet? 
	goto equit
)
if not exist "%~dp0updversacv.md" (
    echo.No database founded. Please download fixed version of XaremOS
	goto equit
)
set /p ver_db=<"%~dp0updversacv"
set /p ver_online=<"!outdir!\databases.ver"
set "ver_online=!ver_online::=!"
set "ver_db=!ver_db::=!"
set orig_ver_db=!ver_db!
set orig_ver_online=!ver_online!
set "ver_online=!ver_online:.=!"
set "ver_db=!ver_db:.=!"
echo.
if !ver_db! geq !ver_online! (
	echo.You're using the latest version of XaremOS ^(v!orig_ver_db!^)
	goto equit
)
if "!skipprompt!"=="0" (
	echo.Newest version: v!orig_ver_online!, current version v!orig_ver_db!
	echo.New version of XaremOS is available, download? ^(y/n^)
	choice /c:YN /n
	if !errorlevel!==1 goto downloadnew
) else (
	goto downloadnew
)
goto equit

:downloadnew
echo.
echo.Downloading version v!orig_ver_online!... Please do not close this window.
for %%A in (!files!) do (
	echo.Downloading '%%A'...
	call :download %%A "!outdir!\%%A" --progress-bar
	if exist "!outdir!\%%A" (
		echo.'%%A' downloaded successfully
	) else (
		echo.Failed to download '%%A': aborting update.
		goto quit
	)
)
echo.
echo.Applying update...
md "%~dp0OldVersions\v!orig_ver_db!" > nul 2>&1
set /a totalfiles=0,currfile=0
for %%X in (!files!) do (
	set /a totalfiles+=1
)

for /f %%# in ('copy /Z "%~dpf0" nul') do set "CR=%%#"
set /a totalfiles-=1
for %%A in (%files%) do (
	if "%%A" neq "%~nx0" (
		set /a currfile+=1
		set /a percent=100*currfile/totalfiles

		<nul set /p "=Replacing file [!currfile!/!totalfiles!] (!percent!%%)!CR!"
		move /y "%~dp0%%A" "%~dp0OldVersions\v!orig_ver_db!" > nul 2>&1
		move /y "!outdir!\%%A" "%~dp0%%A" > nul 2>&1
	)
)
echo.
echo.Batch Antivirus successfully updated to version v!orig_ver_online!
goto quit

:download <file> <output>

if "!hasCurl!"=="1" (
	
	curl "https://raw.githubusercontent.com/xarinerx/Xarem/master/%~1" --output "%~2" %~3
	if !errorlevel! equ 6 (
		echo.Failed to connect to the server. Make sure you're connected to the internet.
	)
) else (
	powershell -ExecutionPolicy Bypass -Command "$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri \"https://raw.githubusercontent.com/xarinerx/Xarem/master/%~1\" -OutFile \"%~2\""
	if not exist "%~2" (
		echo.Failed to download the file. Make sure you're connected to the internet.
	)
)
exit /b !errorlevel!

:equit
if "!skipprompt!"=="0" (
	echo.
	echo.Press any key to quit...
	pause>nul
)
endlocal
exit /b %errorlevel%
@echo off
cmdwiz fullscreen 1
color f0
cd ..
cd krnsys
call systemconfiguration12.bat
cd ..
batbox /h 0
cd Configur
color 1f
cd..
cmdwiz setfont 9
cd Configur
:configs
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     Config %time% %date% %OS.V% %OS.N% %OS.A%
echo.
CmdMenuSel F0F1 "        Boot" "        Exit" "        System Information" "        Erase Disk" "        Kernel Editor (!)" "        Erase all information(!)" "        Clean Cache"
if %ERRORLEVEL% == 1 (
    cd.. & cmdwiz fullscreen 0 & color 0f & mddbootloader
)
if %ERRORLEVEL% == 2 exit
if %ERRORLEVEL% == 3 goto sysinfolic
if %ERRORLEVEL% == 4 goto erasedisk
if %ERRORLEVEL% == 5 goto kernelconfig
if %ERRORLEVEL% == 6 goto esai
if %ERRORLEVEL% == 7 goto ccache
pause >nul

:sysinfolic
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     System Information
echo   Timezone ; %time% 
echo   Date ; %date% 
echo   Installed OS Build ; %OS.V% 
echo   Installed OS Corporative Name ; %OS.N% 
echo   Config/Installed OS Author ; %OS.A%
echo   The license; %OS.L%
echo.
CmdMenuSel F0F1 "        Exit"
if %ERRORLEVEL% == 1 goto configs
pause >nul

:erasedisk
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     Erase Disk
echo           Are you sure to erase all data?
echo. 
CmdMenuSel F0F1 "        Yes." "        No!"
if %ERRORLEVEL% == 1 (
    cd ..
    rd /s /q localuser
	md localuser
    cls 
    cd Configur
	goto config 
pause >nul
)
:kernelconfig 
cd..
cd krnsys
notepad kernelsys.bat
exit

:esai
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo            Erase all information?
echo         Are you sure to Erase all information?
echo.
CmdMenuSel F0F1 "        Yes." "        No!"
if %ERRORLEVEL% == 1 (
cd ..
rd /s /q localuser 
rd /s /q setprofileinfo
md localuser
md setprofileinfo.txt
cls
cd Configur
goto config

:ccache
cls
echo.
echo.
echo.
echo.
echo.
echo.
cd ..
cd krnsys
cd $XR-AGENT
rd /s /q $XR-CACHETEMP
md $XR-CACHETEMP
echo Cleaning cache .
timeout /t 1 >nul
cls
echo Cleaning cache ..
timeout /t 1 >nul
cls
echo Cleaning cache ...
timeout /t 1 >nul
cls
echo Cleaning Cache .
cls
timeout /t 1 >nul
cls
echo Cache cleaned!
pause >nul
cd ..
cd ..
cd Configur
goto configs





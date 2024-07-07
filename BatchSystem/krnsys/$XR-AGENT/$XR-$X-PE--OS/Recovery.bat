@echo off
:starecov
color 1f
cmdwiz setfont 9
echo Recovery system! 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo       Press button Start the recovery
echo       Press button Check bugs/errors [!] [ Problems ] 
echo       Press button WebSite 
echo       Press button Boot
echo.
echo.
echo.
call CmdMenuSel F0F1 "       Start the recovery" "       Check bugs/errors [!]" "       Website" "       Boot"

if %errorlevel%==1 goto $trmd--bootrepo--reco
if %errorlevel%==2 goto checks
if %errorlevel%==3 goto wbsite
if %errorlevel%==4 goto Boot

:$trmd--bootrepo--reco
start $boot-repo--appdh$$recover.bat
exit

:checks
cls
echo Checking system... [1/5] 1%
timeout /t 1 >nul
cls
echo Checking system... [1/5] 6%
timeout /t 1 >nul
cls
echo Checking system... [2/5] 9%
timeout /t 1 >nul
cls
echo Checking system... [3/5] 10%
timeout /t 1 >nul
cls
echo Checking system... [3/5] 19%
timeout /t 1 >nul
cls
echo Checking system... [3/5] 24%
timeout /t 1 >nul
cls
echo Checking system... [3/5] 33%
timeout /t 1 >nul
cls
echo Checking system... [3/5] 47%
timeout /t 1 >nul
cls
echo Checking system... [4/5] 56%
timeout /t 1 >nul
cls
echo Checking system... [4/5] 61%
timeout /t 1 >nul
cls
echo Checking system... [4/5] 64%
timeout /t 1 >nul
cls
echo Checking system... [4/5] 72%
timeout /t 1 >nul
cls
echo Checking system... [5/5] 89%
timeout /t 1 >nul
cls
echo Checking system... [5/5] 100%
timeout /t 1 >nul
cls
echo System checked!
pause >nul
goto starecov


:wbsite
cls
echo You will get an error, but just go to the tab <<Hills Hall>> 
echo Link: https://sites.google.com/view/hillsstudiositeoff/hills-%D1%85%D0%BE%D0%BB%D0%BB
pause >nul
goto starecov
:Boot
cd .. & cd ..
start mddbootloadernew.bat
exit
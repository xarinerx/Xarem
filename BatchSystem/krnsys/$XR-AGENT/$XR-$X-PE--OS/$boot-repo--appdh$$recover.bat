@echo off
:reccc1
color 1f
cmdwiz setfont 9
echo { DO YOU WANT RECOVERY YOUR SYSTEM? } [ ADMIN MODE ]
call Button 2 30 "{ Y }" 2 35 "{ N }" 2 40 "{ Log to boot-repo mode? (Dev Mode) }"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto yess1
if %errorlevel%==2 goto noo1
if %errorlevel%==3 goto admin1yn

:yess1
cls
echo { CHOOSE VARIANT FOR RECOVERY }
call CmdMenuSel F0F1 "        Recovery from cmd" "        Recovery corrupted system files" "        Reinstall[!] - Not finished" "        Configuration Editor[!] - Attention, danger for your system" "        Exit"

if %errorlevel%==1 goto rfcmd
if %errorlevel%==2 goto rcsf
if %errorlevel%==3 goto Reinstall
if %errorlevel%==4 goto congfedit
if %errorlevel%==5 Exit
pause >nul

:noo1
cls
echo Recovery canceled! - Please press any key to exit from this programme
pause >nul
Exit

:admin1yn
cls
echo [ DO YOU WANT LOG TO BOOT-REPO? ]
call Button 2 30 "{ Y(!) }" 2 35 "{ N }"   # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto pass1
if %errorlevel%==2 goto reccc1

:yess2
cls
echo You are in $boot-repo mode
echo Loading services... [0/7]
timeout /t 1 >nul
cls
echo You are in $boot-repo mode
echo Loading services... [1/7]
timeout /t 1 >nul
cls
echo You are in $boot-repo mode
echo Loading services... [2/7]
timeout /t 1 >nul
cls
echo You are in $boot-repo mode
echo Loading services... [3/7]
timeout /t 1 >nul
cls
echo You are in $boot-repo mode
echo Loading services... [4/7]
timeout /t 1 >nul
cls
echo You are in $boot-repo mode
echo Loading services... [5/7]
timeout /t 1 >nul
cls
echo You are in $boot-repo mode
echo Loading services... [6/7]
timeout /t 1 >nul
cls
echo You are in $boot-repo mode
echo Loading services... [7/7]
goto admin1
:admin1
timeout /t 1 >nul
cls
echo You are in $boot-repo mode
timeout /t 1 >nul
echo Services loaded!
call CmdMenuSel F0F1 "        System Configuration Editor[! - D]" "        Edit system...[!]" "        Usertt and UserPins Edit" "        $boot-repo --exit" "        Back to normal recovery"

if %errorlevel%==1 (
    cd .. & cd .. & notepad systemconfiguration12.bat & goto admin1
)
if %errorlevel%==2 (
    cd .. & cd .. & cd .. & notepad sys.bat & goto admin1
)
if %errorlevel%==3 (
    cd .. & cd .. & cd .. & notepad usertt.cmd & notepad userpins.cmd & goto admin1
)
if %errorlevel%==4 Exit
if %errorlevel%==5 goto yess1
pause >nul

:rfcmd 
cls
batbox /h 1
echo Terminal/XaremOS  --Recovery

:rcsf
cd .. & cd ..
call kernelsys.bat
cd ..
cd krnsys

:Reinstall
cls
echo Enter file link to download.
Call Button  2 30 "Back"   # Press
Getinput /m %Press% /h %defaultbuttoncolor%
if %errorlevel%==1 goto yess1
echo.
set /p user_input=
cls
echo Enter link to reinstall system
set /p user_input2=
powershell -Command "(New-Object Net.WebClient).DownloadFile('%user_input%', '%user_input2%')
start %user_input2%
cd..

:congfedit
cd .. & cd .. & cd ..
cd Configur
notepad congf.bat
cd ..
cd krnsys
cd $XR-AGENT
cd XR-%X-PE OS%
exit

:pass1
cls
echo Please enter key to activate $boot-repo mode.
set /p key=
if %key%==C0ewDMsepdsh goto yess2
if %key%==WxhmWpTQ5Muz goto yess2
if %key%==7PHtd28G6Qmp goto yess2
if %key%==p8ldqsYwXPDh goto yess2
if %key%==Rwup8vXCowy5 goto yess2
if %key%==eSHqBI5riVpI goto yess2
echo Wrong pass-key! Try again
pause >nul
goto pass1






 

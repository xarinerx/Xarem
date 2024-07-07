@echo off
call userpins.cmd
cls
cmdbkg /t 100
cmdwiz setfont 8
call explrlogon
setlocal enabledelayedexpansion
batbox /h 0
@mode 200,50
cmdbkg wallpaper.png 
goto sgsdx
:desktop
cmdbkg wallpaper.png 
batbox /h 0
@mode 200,50
cls
type wallpaper1.kimg
call explrlogon
echo Time %time% and Date %date%
call Button 2 47 "[ X ]" 48 47 "[ BAV ]" 60 47 "[ Terminal ]" 77 47 "[ Manager ]" 93 47 "[ Settings ]" 147 47 "[ Profile ]" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (goto start)
if %errorlevel%==2 goto b-avm
if %errorlevel%==3 goto trmlmenu
if %errorlevel%==4 goto mngr
if %errorlevel%==5 goto settings
if %errorlevel%==6 goto pprifile
pause >nul
:start
cls
call userpins.cmd
call explrlogon
echo You are as logged a %username%$ 
Call Button 2 30 "FileExp" 2 33 "Settings" 2 47 "[ X ]" 2 36 "Anti-Virus" 14 30 "Terminal" 14 33 "Manager" 16 36 "Shutdown system" 2 39 "Shutdown PC" 14 27 "PKL New.Beta" 2 27 "AiCora" 2 24 "Explorar" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto flx
if %errorlevel%==2 goto settings
if %errorlevel%==3 goto desktop
if %errorlevel%==4 goto b-avm
if %errorlevel%==5 goto trmlmenu
if %errorlevel%==6 goto mngr
if %errorlevel%==7 goto shd
if %errorlevel%==8 shutdown /s /t 0
if %errorlevel%==9 cd krnsys & cd pkl & start pkl.bat & cd.. & cd.. & goto start
if %errorlevel%==10 goto aicora
if %errorlevel%==11 goto explrs
pause >nul
:settings
cmdbkg wallpaper.png 
cls
cls
type wallpaper1.kimg
call explrlogon
Call Button 2 30 "[ Personalization ]" 2 35 "[ User Settings ]" 2 40 "{< Exit}" 2 25 "[ XaremOS info ]" 2 20 "[ Recovery ]" 2 15 "[ DEV Testing ]" 2 10 "[ V-PC Name ]"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto stt_persn
if %errorlevel%==2 goto usett
if %errorlevel%==3 goto start
if %errorlevel%==4 goto xver
if %errorlevel%==5 goto recover
if %errorlevel%==6 goto devstestx
if %errorlevel%==7 goto vpcname
pause >nul
:stt_persn
cls

Call Button 2 30 "Dark Mode" 2 35 "White mode" 2 40 "{< Back}" 2 45 "[ Wallpapers ]" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 color 0f & goto stt_persn
if %errorlevel%==2 color f0 & goto stt_persn
if %errorlevel%==3 goto settings
if %errorlevel%==4 goto wallpap
pause >nul

:usett
cls
echo You are in User Settings!
Call Button 2 30 "Open User Profile Personal Data" 2 35 "User Profile Data" 2 40 "{<Back}"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto usppd
if %errorlevel%==2 goto uspp 
if %errorlevel%==3 goto settings 

:usppd
cls
call Button 2 30 "User Profile Personal Data" 2 35 "User Profile Personal Data - Advanced settings"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 notepad usertt.cmd & goto logout
if %errorlevel%==2 notepad userpins.cmd & goto logout
goto usett

:uspp
notepad stpi.cmd
goto usett

:wallpap
cmdbkg wallpaper.png 
cls
echo Select new wallpapers...
start ConsoleApp5.exe
cls
goto stt_persn

:xver
start xver.cmd
goto settings

:recover
start recover
call shd.cmd

:vpcname
cls
call userpins
echo Name in utrmlx.. %username%--%usernamepc%$desktop
call Button 2 10 "[ V-PC settings ]" 2 15 "[ Change name of V-PC ]" 2 20 "[ Update ]" 2 25 "Exit" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto vpcsett
if %errorlevel%==2 notepad userpins.cmd & goto vpcname
if %errorlevel%==3 goto vpcname
if %errorlevel%==4 goto settings

:vpcsett
cls
call userpins
echo %usercomac%\Do not edit this in userpins.cmd!
echo V-PC settings not avaible, sorry! :(
call Button 2 30 "Back" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto vpcname

:devstestx
cls
echo Pre-release versions avaible with Hills Premium, If you want to try this function - please buy Hills Premium.
call Button 2 30 " Back to settings " 2 25 "[ More details ]"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto settings
if %errorlevel%==2 goto moredetailsx

:moredetailsx
cls
echo Pre-release versions avaible with Hills Premium, If you want to try this function - please buy Hills Premium.
echo Pre-release versions this is versions which come out 3-4 days before release. please do not confuse with PRB and just pre-releases
echo Press any key to back
pause >nul
goto devstestx




:flx
cmdbkg wallpaper.png 
cls
echo Explorer -=localuser=-----------
echo.
echo ------------------
for /f %%i in ('dir /b /a-d "localuser"') do (
    echo %%i
)
echo.
echo ------------------
echo Recent deleted file:
echo.
echo %recentdeletedfile%
echo.
echo Recent created file:
echo.
echo %recentcreatedfile%
echo.
echo chcp$test:
chcp
echo Current directory:
cd
echo.
echo -----------OPTIONS--------------
echo.
echo.
Call Button  2 30 "Exit" 2 35 "+ File" 2 40 "- File" 2 45 "+ Folder" 15 45 "- Folder"  # Press
Getinput /m %Press% /h %defaultbuttoncolor%
if %errorlevel%==1 goto desktop
if %errorlevel%==2 goto MdFile
if %errorlevel%==3 goto RdFile
if %errorlevel%==4 goto MdFold
if %errorlevel%==5 goto RdFold
pause >nul
:MdFile
cls
echo Enter new file name
set /p recentcreatedfile=
cd localuser
echo 0 >> %recentcreatedfile%
cd..
cd krnsys
cd $XR-AGENT
cd $XR-CACHETEMP
md %random%
cd .. & cd ..
cd ..
goto flx
:RdFile
cls
echo Enter file name
set /p recentdeletedfile=
cd localuser
del %recentdeletedfile%
cd..
goto flx
:MdFold
cls
echo Enter new folder name
set /p recentcreatedfile=
cd localuser
md %recentcreatedfile%
cd..
cd krnsys
cd $XR-AGENT
cd $XR-CACHETEMP
md %random%
cd .. & cd ..
cd ..
goto flx
:RdFold
cls
echo Enter folder name
set /p recentdeletedfile=
cd localuser
rd %recentdeletedfile%
cd..
goto flx

:trml
batbox /h 1
cls
echo Terminal ^ XaremOS 1 24X2 (since 2023-2024) 
echo.                     
echo XXXXXXX       XXXXXXX
echo X:::::X       X:::::X
echo X:::::X       X:::::X
echo X::::::X     X::::::X
echo XXX:::::X   X:::::XXX
echo   X:::::X X:::::X   
echo    X:::::X:::::X    
echo     X:::::::::X     
echo     X:::::::::X     
echo     X:::::X:::::X    
echo    X:::::X X:::::X   
echo XXX:::::X   X:::::XXX
echo X::::::X     X::::::X
echo X:::::X       X:::::X
echo X:::::X       X:::::X
echo XXXXXXX       XXXXXXX
echo.
goto input

:input
call userpins.cmd
set /p "user_input=%username%-%usernamepc%$desktop-$Terminal Command Line: "
if "!user_input:~0,4!"=="echo" (
    echo !user_input:~5!
) else if "!user_input:~0,2!"=="rm" (
    del !user_input:~3!
) else if "!user_input:~0,2!"=="cr" (
    echo 0 > !user_input:~3!
) else if "!user_input:~0,2!"=="md" (
    md !user_input:~3!
) else if "!user_input:~0,2!"=="rd" (
    rd /s /q "!user_input:~3!"
) else if "!user_input:~0,5!"=="start" (
    start "!user_input:~6!"
) else if "!user_input:~0,2!"=="cd" (
    cd "!user_input:~3!"
) else if "!user_input:~0,4!"=="font" (
    cmdwiz setfont "!user_input:~5!"
) else if "!user_input:~0,7!"=="clsfont" (
    start sys.bat & exit
) else if "!user_input:~0,4!"=="back" (
    cd..
) else if "!user_input:~0,4!"=="exit" (
    goto start
) else if "!user_input:0,26!"=="cehroot--procfile--$kpanic" (
	goto kpanicrc
) else if "!user_input:~0,4!"=="read" (
    type "!user_input:~5!"
    echo.
) else if "!user_input:~0,5!"=="color" (
    color !user_input:~6!
) else if "!user_input:~0,5!"=="cls" (
    cls
    goto trml
) else if "!user_input:~0,7!"=="taskmgr" (
    goto mngrt
) else if "!user_input:~0,4!"=="goto" (
    call :!user_input:~5!
    echo.
    batbox /h 0
)   else if "!user_input:~0,3!"=="dir" (
    for %%F in (*) do (
        if %%~aF lss d (
            echo %%~nxF
        )
    )
) else if "!user_input:~0,4!"=="help" (
    echo.
    echo Terminal 1.3 Commands:
    echo echo - echo the text
    echo rm - delete file
    echo cr - create a new file 
    echo start - open file
    echo cd - go to directory/folder
    echo back -  to previous folder
    echo exit - close and go to UI-systeminterface
    echo read - read the file content
    echo help - list of commands
    echo dir - show all files in current directory
	echo notepad - open .bat or .cmd or .ini files
    echo taskmgr - open the taskmgr process
	) else (
    echo Incorrect command: "!user_input!"
)
goto input

:walledit 
cmdbkg wallpaper.png 
cls
echo Select new wallpapers...
start ConsoleApp5.exe
cls
goto desktop

:aicora
cls
call userpins
 set AI.N=AiCora [Beta]
  set AI.V=1.0 Beta
   set AI.C=BlueCore Team
    set AI.L=BlueCore Studio since 2023. DO NOT PIRATE AND ILLEGAL COPIES THIS APPLICATION! This application is free! 
	 set AI.WN=Welcome in AiCora [Beta]
echo It's a %AI.N%
echo you have any questions?
echo   Clock: %time%
echo   AiCora version: %AI.V%
echo AiCora in developing bug's fix in progress
call Button 2 45 "Exit" 2 30 "Hello" 2 35 " How d o you feel? " 2 40 "What are you?" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto start 
if %errorlevel%==2 goto answerhello
if %errorlevel%==3 goto answerhowdo
if %errorlevel%==4 goto answerwhatare1






:shd
cls
call shd.cmd

:upd 
cls
echo This application in developing! Do you not have permission, to open this application!. Err: {0x02201002} 
echo Press any key to exit!
pause >nul
cls
goto start

:aicerr
cls
echo AiCora in developing! In the next patch (update) this application will be avaible!. Err: {0x02201002} 
echo Press any key to exit!
pause >nul
cls
goto start 

:mngr
cls
Call Button 2 30 "[ Windows TaskManager ]" 2 35 "[ XaremOS TaskManager ]" 2 40 "Exit"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto start & start taskmgr.exe
if %errorlevel%==2 goto mngrnew
if %errorlevel%==3 goto start

:mngrnew
cls
echo Exit is not procces, lol, its a button which exits the program
echo XaremOS Procceses:
CmdMenuSel F0F1 "		ExplrLogon (Desktop)" "			XaremOS Anti-Virus" "		System Kernel" "		UserProfile" "		BatBox Kernel" "		System" "		  Exit"
if %errorlevel%==1 goto explrermngr
if %errorlevel%==2 goto xaremngr
if %errorlevel%==3 goto syskernelmngr
if %errorlevel%==4 goto usprmngr
if %errorlevel%==5 goto bmngr
if %errorlevel%==6 goto sysmngr
if %errorlevel%==7 goto start


:mngrt
start taskmgr
cls
goto trml

:b-avm
cls
call Button 2 12 "Check Updates" 2 30 "Start BAV" 2 20 "BAV Detail" 14 20 "BAV Config" 2 40 "BAV Status" 2 45 "Quarantine" 14 30 "{ < Back }"  # Press
Getinput /m %Press% /h 70
cd krnsys 
cd BAVANTI
if %errorlevel%==1 start BAVUpdate.bat
if %errorlevel%==2 start BAV.bat
if %errorlevel%==3 start BAVDetail.bat
if %errorlevel%==4 notepad BAVConfig.bat
if %errorlevel%==5 start BAVStatus.bat
if %errorlevel%==6 start Quarantine.bat
if %errorlevel%==7 goto exx1

:reapboot
exit & start $re-ap--$boot.cmd

:exx1
cd .. 
cd ..
exit & start sys.bat



:explrs
cls
echo --Explorer--
echo.
echo.
echo ----------------
cd .. & cd .. & dir /a
echo.
echo.
echo Is your disk where is your XaremOS installed.
cd XaremOS & cd BatchSystem
call Button 2 20 "[ Where installed the patch of the system? ]" 2 25 "[ About ]" 2 30 "[ Create new files ]" 2 35 "Exit" 2 40 "[ Clean cache ]"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto answeeer1
if %errorlevel%==2 start xver.cmd & goto explrs
if %errorlevel%==3 goto flx
if %errorlevel%==4 goto start
if %errorlevel%==5 goto clncache

:answeeer1
cls
echo --Explorer--
echo.
echo.
echo ----------------
cd .. & cd .. & dir /a
echo.
echo.
echo Is your disk where is your XaremOS installed.
cd XaremOS & cd BatchSystem
echo \XaremOS\BatchSystem\krnsys\kernelsys
echo Please press any key to back
pause >nul
goto explrs




:answerhello
cls
call userpins
 set AI.N=AiCora [Beta]
  set AI.V=1.0 Beta
   set AI.C=BlueCore Team
    set AI.L=BlueCore Studio since 2023. DO NOT PIRATE AND ILLEGAL COPIES THIS APPLICATION! This application is free! 
	 set AI.WN=Welcome in AiCora [Beta]
echo It's a %AI.N%
echo you have any questions?
echo   Clock: %time%
echo   AiCora version: %AI.V%
echo AiCora in developing bug's fix in progress
echo Hello, your name is %username% ?
call Button 2 45 "Exit" 2 30 "Hello" 2 35 " How d o you feel? " 2 40 "What are you?" 2 20 "Yes" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto start 
if %errorlevel%==2 goto answerhello
if %errorlevel%==3 goto answerhowdo
if %errorlevel%==4 goto answerwhatare1
if %errorlevel%==5 goto answeryeshello1
:answerhowdo
cls
call userpins
 set AI.N=AiCora [Beta]
  set AI.V=1.0 Beta
   set AI.C=BlueCore Team
    set AI.L=BlueCore Studio since 2023. DO NOT PIRATE AND ILLEGAL COPIES THIS APPLICATION! This application is free! 
	 set AI.WN=Welcome in AiCora [Beta]
echo It's a %AI.N%
echo you have any questions?
echo   Clock: %time%
echo   AiCora version: %AI.V%
echo AiCora in developing bug's fix in progress
echo Well, how can I tell you... I'm bot, I don't feel anything
call Button 2 45 "Exit" 2 30 "Hello" 2 35 " How d o you feel? " 2 40 "What are you?" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto start 
if %errorlevel%==2 goto answerhello
if %errorlevel%==3 goto answerhowdo
if %errorlevel%==4 goto answerwhatare1

:answerwhatare1
cls
call userpins
 set AI.N=AiCora [Beta]
  set AI.V=1.0 Beta
   set AI.C=BlueCore Team
    set AI.L=BlueCore Studio since 2023. DO NOT PIRATE AND ILLEGAL COPIES THIS APPLICATION! This application is free! 
	 set AI.WN=Welcome in AiCora [Beta]
echo It's a %AI.N%
echo you have any questions?
echo   Clock: %time%
echo   AiCora version: %AI.V%
echo AiCora in developing bug's fix in progress
echo Im a Bot or AI (Artificial intelligence)
call Button 2 45 "Exit" 2 30 "Hello" 2 35 " How d o you feel? " 2 40 "What are you?" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto start 
if %errorlevel%==2 goto answerhello
if %errorlevel%==3 goto answerhowdo
if %errorlevel%==4 goto answerwhatare1

:answeryeshello1
cls
call userpins
 set AI.N=AiCora [Beta]
  set AI.V=1.0 Beta
   set AI.C=BlueCore Team
    set AI.L=BlueCore Studio since 2023. DO NOT PIRATE AND ILLEGAL COPIES THIS APPLICATION! This application is free! 
	 set AI.WN=Welcome in AiCora [Beta]
echo It's a %AI.N%
echo you have any questions?
echo   Clock: %time%
echo   AiCora version: %AI.V%
echo AiCora in developing bug's fix in progress
echo So I guessed... Nice to meet you %username%
call Button 2 45 "Exit" 2 30 "Hello" 2 35 " How d o you feel? " 2 40 "What are you?" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto start 
if %errorlevel%==2 goto answerhello
if %errorlevel%==3 goto answerhowdo
if %errorlevel%==4 goto answerwhatare1

:uxmb
cls
cd $XRR-APP & cd XmBrouser
call XmBrouser

:explrermngr
cls
echo The procces name: explrlogon
echo You want:
call Button 2 30 "Close application" 2 35 "Location" 2 40 "Exit"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 timeout /t 1 >nul & cd krnsys & call $egds
if %errorlevel%==2 goto explrermngr & echo \BatchSystem-explrlogon.bat
if %errorlevel%==3 goto mngrnew


:xaremngr
cls
echo The procces name: BAV
echo You want:
call Button 2 30 "Location" 2 35 "Exit" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto xaremngr & echo \BatchSystem\krnsys\BAVANTI--BAV
if %errorlevel%==2 goto mngrnew


:syskernelmngr
cls
echo The procces name: 
echo You want:
call Button 2 30 "Location" 2 35 "Exit" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto syskernelmngr & echo \BatchSystem\krnsys\
if %errorlevel%==2 goto mngrnew


:usprmngr
cls
echo The procces name: userpins
echo You want:
call Button 2 30 "Location" 2 35 "Exit" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto usprmngr & echo \BatchSystem--userpins.cmd
if %errorlevel%==2 goto mngrnew


:bmngr
cls
echo The procces name: explrlogon
echo You want:
call Button 2 30 "Close application" 2 35 "Location" 2 40 "Exit" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 timeout /t 1 >nul & goto waits
if %errorlevel%==2 goto bmngr & echo \BatchSystem-batbox.exe
if %errorlevel%==3 goto mngrnew


:sysmngr
cls
echo The procces name: sys32
echo You want:
call Button 2 30 "Close application" 2 35 "Location" 2 40 "Exit" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 timeout /t 1 >nul & cd krnsys & call $egds
if %errorlevel%==2 goto sysmngr & echo \BatchSystem
if %errorlevel%==3 goto mngrnew

:waits
cls
set /a "randomTimeout=%random% %% 10 + 5"
timeout /t !randomTimeout! >nul
goto start


:clncache
cls
Echo deleting cache...
set /a "randomTimeout=%random% %% 10 + 4"
timeout /t !randomTimeout! >nul
cd krnsys & cd $XR-AGENT & rd $XR-CACHETEMP & md $XR-CACHETEMP & cd .. & cd ..
echo cache cleaned!
echo press any key to back!
pause >nul
goto explrs

:logout
@mode 200,50
call userpins
cls
echo You are logged out
echo.
echo.
echo 											%username%$
call Button 60 35 "[ Login to system ]" 77 35 "[ Others... ]" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto desktop
if %errorlevel%==2 goto logoutothers

:logoutothers
@mode 200,50
call userpins
cls
echo You are logged out
echo.
echo.
echo 											%username%$
call Button 60 35 "[ Login to system ]" 2 35 "[ Shutdown system ]" 2 40 "[ Restart System ]" 2 30 "[ Sleeping mode ]" 2 25 "[ ▼Hide ]" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto desktop
if %errorlevel%==2 call shd.cmd
if %errorlevel%==3 goto rstdsys
if %errorlevel%==4 goto sleepkmode
if %errorlevel%==5 goto logout

:rstdsys
call userpins
cls
echo system restarts...
set /a "randomTimeout=%random% %% 12 + 7"
timeout /t !randomTimeout! >nul
cls
goto sgsdx

:sleepkmode
cls
pause >nul
goto logout

:sgsdx
call explrlogon 
cmdwiz wallpaper.png
cmdwiz setfont 8
cmdbkg /t 100
@mode 200,50
call userpins
cls
echo Welcome!
echo.
echo.
echo 											%username%$
call Button 64 47 "[ Login to system ]" 95 47 "[ Others... ]" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto desktop
if %errorlevel%==2 goto welcfun

:welcfun
cmdbkg wallpaper.png
cmdwiz setfont 8
@mode 200,50
call userpins
cls
echo Welcome!
echo.
echo.
echo 											%username%$
call Button 60 35 "[ Login to system ]" 2 35 "[ Shutdown system ]" 2 40 "[ Restart System ]" 2 30 "[ Sleeping mode ]" 2 25 "[ ▼Hide ]" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto desktop
if %errorlevel%==2 call shd.cmd
if %errorlevel%==3 goto rstdsys
if %errorlevel%==4 goto sleepmode
if %errorlevel%==5 goto sgsdx

:sleepmode
cls
pause >nul
goto sgsdx

:blockeduser
cls
echo %username%$
call Button 64 47 "[ Back to system ]" 95 47 "[ Sleep mode ]" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto desktop
if %errorlevel%==2 goto sleepbmode

:sleepbmode
cls
pause >nul
goto blockeduser

:pprifile
call explrlogon
cls
cmdbkg wallpaper.png 
batbox /h 0
@mode 200,50
cls
call explrlogon
echo Time %time% and Date %date%
call Button 2 47 "[ X ]" 48 47 "[ BAV ]" 60 47 "[ Terminal ]" 77 47 "[ Manager ]" 93 47 "[ Settings ]" 147 47 "[ Hide ]" 142 40 "[ Logout ]" 142 35 "[ Block ]" 142 30 "[ Sleeping mode ]"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (goto start)
if %errorlevel%==2 goto b-avm
if %errorlevel%==3 goto trml
if %errorlevel%==4 goto mngr
if %errorlevel%==5 goto settings
if %errorlevel%==6 goto Desktop
if %errorlevel%==7 goto logout
if %errorlevel%==8 goto blockeduser
if %errorlevel%==9 goto sleepkmode
pause >nul

:kpanicrc
cls
set /a "randomTimeout=%random% %% 5 + 2"
timeout /t !randomTimeout! >nul
cls
cd krnsys
call cehoroot--procfile--$kpanic
exit /b

:trmlmenu
cls
echo WARNING! X-WIND Terminal - is Kernel Terminal (You needed must log in to the system) 
call Button 2 30 "[ XaremOS Terminal ]" 2 35 "[ X-WIND Terminal ]" 2 40 "Exit" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto trml
if %errorlevel%==2 goto xwindtermux
if %errorlevel%==3 goto Start

:xwindtermux
cls
batbox /h 1
cls
echo Terminal ^ XaremOS 1 24X2 (since 2023-2024) 
echo.                     
echo XXXXXXX       XXXXXXX
echo X:::::X       X:::::X
echo X:::::X       X:::::X
echo X::::::X     X::::::X
echo XXX:::::X   X:::::XXX
echo   X:::::X X:::::X   
echo    X:::::X:::::X    
echo     X:::::::::X     
echo     X:::::::::X     
echo     X:::::X:::::X    
echo    X:::::X X:::::X   
echo XXX:::::X   X:::::XXX
echo X::::::X     X::::::X
echo X:::::X       X:::::X
echo X:::::X       X:::::X
echo XXXXXXX       XXXXXXX
echo.
goto inputsr

:inputsr
call userpins
set /p "user_input=%username%-%usernamepc%$kernel-$Terminal Command Line: "
if "!user_input:~0,4!"=="echo" (
    echo !user_input:~5!
) else if "!user_input:~0,2!"=="rm" (
    del !user_input:~3!
) else if "!user_input:~0,2!"=="cr" (
    echo 0 > !user_input:~3!
) else if "!user_input:~0,2!"=="md" (
    md !user_input:~3!
) else if "!user_input:~0,2!"=="rd" (
    rd /s /q "!user_input:~3!"
) else if "!user_input:~0,5!"=="start" (
    start "!user_input:~6!"
) else if "!user_input:~0,2!"=="cd" (
    cd "!user_input:~3!"
) else if "!user_input:~0,4!"=="font" (
    cmdwiz setfont "!user_input:~5!"
) else if "!user_input:~0,7!"=="clsfont" (
    start sys.bat & exit
) else if "!user_input:~0,4!"=="back" (
    cd..
) else if "!user_input:~0,26!"=="cehroot--procfile--$kpanic" (
	goto kpanicrc
) else if "!user_input:~0,4!"=="read" (
    type "!user_input:~5!"
    echo.
) else if "!user_input:~0,5!"=="color" (
    color !user_input:~6!
) else if "!user_input:~0,7!"=="backsys" (
	goto logout
) else if "!user_input:~0,5!"=="cls" (
    cls
    goto trml
) else if "!user_input:~0,7!"=="taskmgr" (
    goto mngrt
) else if "!user_input:~0,4!"=="goto" (
    call :!user_input:~5!
    echo.
    batbox /h 0
)   else if "!user_input:~0,3!"=="dir" (
    for %%F in (*) do (
        if %%~aF lss d (
            echo %%~nxF
        )
    )
) else if "!user_input:~0,4!"=="help" (
    echo.
    echo Terminal 1.3 Commands:
    echo echo - echo the text
    echo rm - delete file
    echo cr - create a new file 
    echo start - open file
    echo cd - go to directory/folder
    echo back -  to previous folder
    echo read - read the file content
    echo help - list of commands
    echo dir - show all files in current directory
	echo backsys - back to system
	echo notepad - open .bat or .cmd or .ini files
    echo taskmgr - open the taskmgr process
	) else (
    echo Incorrect command: "!user_input!"
)
goto inputsr
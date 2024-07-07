@echo off
@echo off
@mode 200,50
setlocal enabledelayedexpansion
cmdwiz color 0
cmdwiz fullscreen 1
cmdwiz setfont 9
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 15 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 14 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 13 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 12 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 11 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 10 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 9 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 8 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 7 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 6 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 5 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 4 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 3 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 2 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 1 sec
timeout /t 1 >nul
cls
echo [0x0193018333f] [2x283] [0x000000000f] 
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo																													
echo 									System has been crashed. The error is caused by closed system proccesing...
echo 									System will be restarted in... 0 sec
timeout /t 1 >nul
cls
goto xboot
:xboot
cls
cd
batbox /h 0
cmdwiz setfont 8
cls
cd .. 
call explrlogon
cd krnsys
cls
chcp 65001 >nul
cls
..\cmdbkg boot.png /t 100 & cmdwiz fullscreen 1 & timeout /t 1 >nul & cls
timeout /t 1 >nul
cmdwiz fullscreen 0
chcp 866 >nul
cls
cd ..
start sys.bat
exit

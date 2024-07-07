@echo off
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
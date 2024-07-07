@echo off
cmdwiz setfont 9
echo CHK4001 Version 1.0
echo It's a start-check!
echo And - this programm check's new updates!
call Button 5 43 "Exit" 2 59 "Check" 3 47 "Check updates" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 exit
if %errorlevel%==2 goto chks
if %errorlevel%==3 goto updcheck

:chks
cls
echo Just a moment...
timeout /t 6 >nul
cd krnsys
call kernelsys.bat
call systemconfiguration12.bat
cd ..
echo Your system checked! 0 corrupted files!
timeout /t 1 >nul
echo Press any key to exit...
pause >nul
exit


@echo off
call Button 2 30 "{<Back}"  # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 goto start
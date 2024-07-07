@echo off
cls
::SSFVerify: iafWETYPzW20OW55oj52
batbox /h 0
cls
:main
cls
echo -------Best song of every time--------------
echo BIKE - Tangermusic
Call Button  2 2 "Play" 14 2 "Stop" # Press
Getinput /m %Press% /h 70
if %errorlevel%==1 (goto Bike)
if %errorlevel%==2 (Taskkill  /F /IM wscript.exe)
:Bike
set "file=bike-tangermusic-bestcmusic.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
goto main
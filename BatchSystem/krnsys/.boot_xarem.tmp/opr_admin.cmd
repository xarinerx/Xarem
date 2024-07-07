@echo off
@mode 200,50
setlocal enabledelayedexpansion
cmdwiz fullscreen 1
cd ..
call systemconfiguration12.bat
cd .boot_xarem.tmp
chcp 65001 >nul
echo \$XRR-UDA\dllhosts32
timeout /t 1 >nul
echo \$XRR-UDA\dllcurja32
timeout /t 1 >nul
echo \$XRR-UDA\curja32
timeout /t 1 >nul
echo \$XRR-UDA\dllxnb32
timeout /t 1 >nul
echo \$XRR-UDA\ghdxnb32
timeout /t 1 >nul
echo \$XRR-UDA\xnbcurl32
timeout /t 2 >nul
echo \$XRR-UDA\...
timeout /t 1 >nul
echo directory oa-re $krm;"loading";goto \$XRR-UDA\...
timeout /t 1 >nul
echo Loading driver oa-re $xN-hGSystem32
timeout /t 1 >nul
echo Loading driver oa-re $xN-hqXSystem32
timeout /t 1 >nul
echo Loading driver oa-re $xN-PANEL32
timeout /t 1 >nul
echo Loading driver oa-re $xN-hGSystem32
timeout /t 1 >nul
echo. ...\\ff $;"Update";$
goto Update-re

:Update-re
cls
Choice [RUN] 
if /i "%PARAMVALUE%"=="R" goto reinstall
if /i "%PARAMVALUE%"=="U" goto update
if /i "%PAVAMVALUE%"=="N" goto uexit
echo Please enter only U/u or R/r or N/n


:reinstall
cls
echo \.. \.. $root$krnsys\.. X-L x $XRR-UDA $renst $alldriver.32
set /a "randomTimeout=%random% %% 47 + 15" 
timeout /t !randomTimeout! >nul
echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul


echo \.Reinstall [y] Operation applied.
timeout /t 1 >nul
echo \.$ - operation applied
echo \.$ - operation ended
echo \.$ - to exit please press any key
pause >nul
exit

:update
cls
echo \.. $upd $upd_all
set /a "randomTimeout=%random% %% 36 + 12" 
timeout /t !randomTimeout! >nul
set /a "randomTimeout=%random% %% 5 + 1"
echo the whole process will be hidden
echo [.......] 
timeout /t !randomTimeout! >nul
cls
echo [.......]
timeout /t !randomTimeout! >nul
cls
echo [.......]
timeout /t !randomTimeout! >nul
cls
echo [#......]
timeout /t !randomTimeout! >nul
cls
echo [#......]
timeout /t !randomTimeout! >nul
cls
echo [#......]
timeout /t !randomTimeout! >nul
cls
echo [#......]
timeout /t !randomTimeout! >nul
cls
echo [#......]
timeout /t !randomTimeout! >nul
cls
echo [##.....]
timeout /t !randomTimeout! >nul
cls
echo [###....]
timeout /t !randomTimeout! >nul
cls
echo [###....]
timeout /t !randomTimeout! >nul
cls
echo all drivers restarted.. [####...]
timeout /t !randomTimeout! >nul
cls
echo [####...]
timeout /t !randomTimeout! >nul
cls
echo [####...]
timeout /t !randomTimeout! >nul

cls
echo [####...]
timeout /t !randomTimeout! >nul
cls
echo [####...]
timeout /t !randomTimeout! >nul
cls
echo all drivers restarted.. [#####..]
timeout /t !randomTimeout! >nul
cls
echo all drivers restarted.. [######.]
timeout /t !randomTimeout! >nul
cls
echo [######.]
timeout /t !randomTimeout! >nul
cls
echo [######.]
timeout /t !randomTimeout! >nul
cls
echo [######.]
timeout /t !randomTimeout! >nul
cls
echo [######.]
timeout /t !randomTimeout! >nul
cls
echo [#######]
timeout /t !randomTimeout! >nul
echo Update ended... Please press any key to exit
pause >nul
exit

:uexit
echo Operation cancaled. Please press any key to exit
pause >nul
exit






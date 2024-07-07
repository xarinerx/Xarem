@echo off
title %url% - XmBrouser v1.0
cd web
cd pages
cd database
rem this programme cancaled.
:mainsearch
echo Hello in XMBrouser... sadly, this programm in developing
gecho "<purple> Welcome in <white>XM<grey>Brouser  
gecho "<blue> Now you can to write the url on XmBrouser!
set /p url=
cls 
cd..
cd..
cd..
cd..
cd..
cd $XRR-APP
cd $x_nb
cd XmBrouser
cd web
cd pages
cd database
start %url%
cd..
cd..
cd..
cd id
cd data
echo %url% opened at %time% >> history.log
cd..
cd..
cd web
cd pages
cd database
goto mainSearch



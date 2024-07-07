@echo off

title %url% - PKL.Web v1.0
chcp 65001 >nul
cd web
cd pages
cd database
:mainSearch
gecho "<magenta>█ Welcome to PKL.Web...                            █       <green>
gecho "<blue>█ Type the URL now or help to see something cool!  █ ---------<green>:)
gecho "<magenta>████████████████████████████████████████████████████
set /p url=
cls
cd..
cd..
cd..
cd..
cd..
cd boot
cd pkl
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



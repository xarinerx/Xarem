@echo off
cls
call systemconfiguration12
cd..
if not exist explrlogon.bat (
cd krnsys
title Error has occured, explrlogon - system file: corrupted/deleted
start dterror.vbs
exit
)
cd ..
if not exist mddbootloader.bat (
cd krnsys
start EngineError.vbs
start dterror.vbs
timeout 2 >nul
exit
)
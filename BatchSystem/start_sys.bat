@echo off
@mode 100,70
call explrlogon
cmdwiz fullscreen 1
chcp 65001 >nul & cd dir & gecho "<bg#2B2B2B><+*><+:><#00FF42> I <!:> | <+~><#E7E7E7>Starting in the directory 'dir' on the <bg#464646>%time%<bg/>."
ping 127.0.0.1 -n 1 -w 500 >nul
gecho "<bg#2B2B2B><+*><+:><#C4AB0A> I <!:> | <+~><#E7E7E7>Starting <bg#464646>BugCheck.<bg/>"
timeout 2 >nul
endlocal
cd krnsys
start mddbootloadernew.bat
exit

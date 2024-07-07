@Echo off
@mode 200,50
cls
color f4
color 0
chcp 65001 >nul
Echo.
Echo :( Oh no, system boot-loader has been corrupted, and your system may be corrupted.
Echo How to fix it? - Update XaremOS or reinstall him.
Echo.
Echo :( О нет, системный загрущик - был поврежден / удален, и ваша система тоже может быть повреждена
Echo Как исправить это? - Обновите XaremOS либо переустановите её.
timeout 30 >nul
cls
Echo.
Echo The XaremOS will reboot in: 5 sec
timeout 1 >nul
cls
Echo The XaremOS will reboot in: 4 sec
timeout 1 >nul
cls
Echo The XaremOS will reboot in: 3 sec
timeout 1 >nul
cls
Echo The XaremOS will reboot in: 2 sec
timeout 1 >nul
cls
Echo The XaremOS will reboot in: 1 sec
timeout 1 >nul
cls
Echo The XaremOS will reboot in: 0 sec
timeout 1 >nul
cls
Echo rebooting...
timeout 3 >nul
cd ..
start start_sys.bat
exit
@echo off
sfc /scannow
set /p choice=ÊÇ·ñ³É¹¦£¨y/n£©:
if "%choice%"=="y" goto exit
if "%choice%"=="n" goto n
:exit
exit
:n
findstr /C:"[SR] Cannot repair member file" %windir%\logs\cbs\cbs.log >"%userprofile%\Desktop\sfcdetails.txt"
DISM /Online /Cleanup-image /RestoreHealth
pause
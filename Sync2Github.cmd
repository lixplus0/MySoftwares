@echo off
echo 正在提交到暂存区...
git add .
echo.
echo 提交到暂存区--完成
echo.
set /p input2=请输入本次更改的commit：
if "%input2%"=="" (
	set input2=%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2% %TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%
)
echo 正在提交到本地版本库...
git commit -m "%input2%"
echo.
echo 提交到本地版本库--完成
echo.
echo 正在提交到远程版本库...
git push github master
echo.
echo 提交到远程版本库--完成
echo.
pause
exit

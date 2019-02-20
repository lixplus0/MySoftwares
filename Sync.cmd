@echo off
echo.
echo 是否需要先从服务器拉取？
set /p input1=(是，请输入y；否则按任意键继续同步) ：
if "%input1%"=="y" ( goto pull) else (goto push)

:pull
git pull gitee master
echo 拉取完成
echo.
goto push
exit

:push
set /p tishi=请确认，所有的文件已经压缩到 50MB 以下
set /p tishi2=请再次确认，所有的文件已经压缩到 50MB 以下
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
git push gitee master
echo.
echo 提交到远程版本库--完成
echo.
pause
exit

@echo off
echo.
echo �Ƿ���Ҫ�ȴӷ�������ȡ��
set /p input1=(�ǣ�������y���������������ͬ��) ��
if "%input1%"=="y" ( goto pull) else (goto push)

:pull
git pull gitee master
echo ��ȡ���
echo.
goto push
exit

:push
set /p tishi=��ȷ�ϣ����е��ļ��Ѿ�ѹ���� 50MB ����
set /p tishi2=���ٴ�ȷ�ϣ����е��ļ��Ѿ�ѹ���� 50MB ����
echo �����ύ���ݴ���...
git add .
echo.
echo �ύ���ݴ���--���
echo.
set /p input2=�����뱾�θ��ĵ�commit��
if "%input2%"=="" (
	set input2=%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2% %TIME:~0,2%:%TIME:~3,2%:%TIME:~6,2%
)
echo �����ύ�����ذ汾��...
git commit -m "%input2%"
echo.
echo �ύ�����ذ汾��--���
echo.
echo �����ύ��Զ�̰汾��...
git push gitee master
echo.
echo �ύ��Զ�̰汾��--���
echo.
pause
exit

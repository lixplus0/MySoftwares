@echo off
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
git push github master
echo.
echo �ύ��Զ�̰汾��--���
echo.
pause
exit

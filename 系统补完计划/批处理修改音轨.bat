for /f "tokens=*" %%i in ('dir/b *.mkv') do call :merge "%%~ni.mkv" "%%i"
pause
:merge
mkvmerge -o "E:\\Video\\[��ӹ������Ʒ���Ӿ��ϼ�]\\����������01��\\%1"  "(" "%2" ")" "--track-order" "0:0,0:2,0:1"

::mkvmerge -o "����������001.mkv"  "--language" "0:chi" "--default-track" "0:yes" "--forced-track" "0:no" "--language" "2:chi" "--track-name" "2:����" "--default-track" "2:yes" "--forced-track" "2:no" "-a" "2" "-d" "0" "-T" "--no-global-tags" "(" "����������01.mkv" ")" "--track-order" "0:0,0:2"

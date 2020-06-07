@echo off
pushd %~dp0
if [%1]==[] goto :eof
set count=1
:loop
REM echo 绝对路径: %~1
REM echo 文件路径: %~dp1
REM echo 文件全名: %~nx1
REM echo 文件名： %~n1
REM echo 扩展名： %~x1
echo -----------------------------
python standalone_html.py %~1 %~dp1%~n1_out%~x1
echo output %~n1_out%~x1
shift
set /a count+=1
if not [%1]==[] goto loop
pause
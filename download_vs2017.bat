@echo off

setlocal

call %~dp0_vars.bat

echo:
echo Capturing %~dp0vs_Professional.exe -^> %~dp0vs2017\%VERSION%
%~dp0vs_Professional.exe --layout "%~dp0vs2017\%VERSION%" --lang en-US

endlocal
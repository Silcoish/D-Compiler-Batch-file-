@echo off
set myvar=
FOR /F %%g IN ('dir /b /s "*.d"^|find /i /v "main"') DO call :concat %%g
echo %myvar%

dmd main.d -run%myvar%
goto :eof

:concat
set myvar=%myvar% %1
goto :eof


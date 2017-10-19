:::::::::::::::: Visual Studio Code Portable Launcher Version 1.0 BY Ò«ÐùÖ® ::::::::::::::::
@echo off
call:set_absolute_path USERPROFILE .\RunDir\User
call:set_absolute_path APPDATA .\RunDir\User\AppData\Roaming
call:set_absolute_path CompilerPath .\RunDir\Compiler
start Code.exe
exit

:set_absolute_path
for /f %%p in ("%2") do (set %1=%%~fp)
goto:eof

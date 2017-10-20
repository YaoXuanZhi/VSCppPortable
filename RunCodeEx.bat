:::::::::::::::: Visual Studio Code Portable Launcher Version 1.0 BY 耀轩之 ::::::::::::::::
@echo off
set USERPROFILE=%~dp0RunDir\User
set APPDATA=%~dp0RunDir\User\AppData\Roaming
set CompilerPath=%~dp0RunDir\Compiler

::进入当前bat的所在盘符
%~d0

::进入当前bat的所在目录
cd %~dp0

::传入外部参数并执行Code.exe
start Code.exe %1

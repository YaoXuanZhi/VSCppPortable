:::::::::::::::: Visual Studio Code Portable Launcher Version 1.0 BY ҫ��֮ ::::::::::::::::
@echo off
set USERPROFILE=%~dp0RunDir\User
set APPDATA=%~dp0RunDir\User\AppData\Roaming
set CompilerPath=%~dp0RunDir\Compiler

::���뵱ǰbat�������̷�
%~d0

::���뵱ǰbat������Ŀ¼
cd %~dp0

::�����ⲿ������ִ��Code.exe
start Code.exe %1

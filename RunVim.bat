:::::::::::::::: Visual Studio Code Portable Launcher Version 1.0 BY Ò«ÐùÖ® ::::::::::::::::
@echo off

set CompilerPath=E:\ProgramFolder\Microsoft VS Code\RunDir\Compiler
set PATH=%PATH%;%~dp0vim80;

REM "%~dp0Code.exe" %1
call start gvim %1 /k
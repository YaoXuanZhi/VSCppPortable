:::::::::::::::: Visual Studio Code Portable Launcher Version 1.0 BY Ò«ÐùÖ® ::::::::::::::::
@echo off
set USERPROFILE=%~dp0RunDir\User
set APPDATA=%~dp0RunDir\User\AppData\Roaming
set CompilerPath=%~dp0RunDir\Compiler

"%~dp0Code.exe" %1

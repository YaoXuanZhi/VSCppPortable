:::::::::::::::: Emacs Portable Launcher Version 1.0 BY Ò«ÐùÖ® ::::::::::::::::
@echo off

call "D:\SoftwareTools\DevelopResource\MSVC Compiler\PortableGit\gitvarsPlus.bat"

set CompilerPath=E:\ProgramFolder\Microsoft VS Code\RunDir\Compiler
set PATH=%PATH%;%CompilerPath%

REM "%~dp0Code.exe" %1
call start %~dp0bin\runemacs.exe %1 /k

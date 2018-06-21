:::::::::::::::: Visual Studio Code Portable Register Version 1.0 BY 耀轩之 ::::::::::::::::
@echo off
::判断是否已经获取了管理员身份
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

set /p vscodedir=输入VSCode的安装目录，如"D:\xxx\VSCode": 

call %~dp0VSCode_MdLink.bat "%vscodedir%"
call %~dp0RegCode.bat "%vscodedir%"

:::::::::::::::: Visual Studio Code Portable Register Version 1.0 BY ҫ��֮ ::::::::::::::::
@echo off
::�ж��Ƿ��Ѿ���ȡ�˹���Ա���
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա�������&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

set /p vscodedir=����VSCode�İ�װĿ¼����"D:\xxx\VSCode": 

set "vscodedir=%vscodedir:"=%"

call %~dp0VSCode_MdLink.bat "%vscodedir%"
call %~dp0RegCode.bat "%vscodedir%"

copy %~dp0RunCode.bat "%vscodedir%\RunCode.bat"

::�ж��Ƿ��Ѿ���ȡ�˹���Ա���
@echo off
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա�������&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

mklink /j "%USERPROFILE%\.vscode" "%~dp0RunDir\User\.vscode"
mklink /j "%USERPROFILE%\AppData\Roaming\Code" "%~dp0RunDir\User\AppData\Roaming\Code"

set vscodedir=%1\

if not [%vscodedir%]==[\] (
    set "vscodedir=%vscodedir:"=%"
    mklink /j "%vscodedir%RunDir" "%~dp0RunDir"
)

::�ж��Ƿ��Ѿ���ȡ�˹���Ա���
@echo off
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա�������&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

if not exist "%USERPROFILE%\.vscode" (mklink /j "%USERPROFILE%\.vscode" "%~dp0RunDir\User\.vscode")
if not exist "%USERPROFILE%\AppData\Roaming\Code" (mklink /j "%USERPROFILE%\AppData\Roaming\Code" "%~dp0RunDir\User\AppData\Roaming\Code")

set vscodedir=%1
set tempdir=%vscodedir%\
set "tempdir=%tempdir:"=%"

if not [%vscodedir%] == [] (
    if not exist "%tempdir%RunDir" (mklink /j "%tempdir%RunDir" "%~dp0RunDir")
)
::判断是否已经获取了管理员身份
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

mklink /j "%USERPROFILE%\.vscode" "%~dp0RunDir\User\.vscode"
mklink /j "%USERPROFILE%\AppData\Roaming\Code" "%~dp0RunDir\User\AppData\Roaming\Code"
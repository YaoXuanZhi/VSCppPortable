:::::::::::::::: Visual Studio Code Portable Register Version 1.0 BY 耀轩之 ::::::::::::::::
@echo off
::判断是否已经获取了管理员身份
REM  Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行&&Pause >NUL&&Exit)
REM  Rd "%WinDir%\System32\test_permissions" 2>NUL
REM  SetLocal EnableDelayedExpansion

:: 默认以当前批处理所在目录执行，支持外部路径
set vscodedir=%1\

if [%vscodedir%]==[\] (
    set vscodedir=%~dp0
) else (
    set "vscodedir=%vscodedir:"=%"
)

::设置右键菜单项的名称
@set desc="Open with C&ode - OSS"
::设置搭建编译环境的BAT
@set runbat="RunCode.bat"
::设置子路径名称
@set subname="VSCode"
::去掉双引号，主要是为了兼容包含了空格的文件名或路径
@set "runbat=%runbat:"=%"
@set "subname=%subname:"=%"

::添加注册表信息
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%" /v "" /t REG_SZ /d %desc%
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%" /v "Icon" /t REG_EXPAND_SZ /d "%vscodedir%Code.exe"
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%\command" /v ""  /t REG_EXPAND_SZ /d "\"%vscodedir%runbat%\" \"%%V\"

@reg add "HKEY_CURRENT_USER\Software\Classes\*\shell\%subname%" /v "" /t REG_SZ /d %desc%
@reg add "HKEY_CURRENT_USER\Software\Classes\*\shell\%subname%" /v "Icon" /t REG_EXPAND_SZ /d "%vscodedir%Code.exe"
@reg add "HKEY_CURRENT_USER\Software\Classes\*\shell\%subname%\command" /v "" /t REG_EXPAND_SZ /d "\"%vscodedir%runbat%\" \"%%V\"

@reg add "HKEY_CLASSES_ROOT\Directory\shell\%subname%" /v "" /t REG_SZ /d %desc%
@reg add "HKEY_CLASSES_ROOT\Directory\shell\%subname%" /v "Icon" /t REG_EXPAND_SZ /d "%vscodedir%Code.exe"
@reg add "HKEY_CLASSES_ROOT\Directory\shell\%subname%\command" /v "" /t REG_EXPAND_SZ /d "\"%vscodedir%runbat%\" \"%%V\"

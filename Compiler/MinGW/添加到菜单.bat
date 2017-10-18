::此右键菜单在文件夹/桌面上右击时出现
@echo off
::设置右键菜单项的名称
@set desc="进入MinGW编译环境"
::设置搭建编译环境的BAT
@set runbat="mingwvars.bat"
::设置子路径名称
@set subname="mingw"
::去掉双引号，主要是为了兼容包含了空格的文件名或路径
@set "runbat=%runbat:"=%"
@set "subname=%subname:"=%"
::添加注册表信息
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%" /v "" /t REG_SZ /d %desc%
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%\command" /v ""  /t REG_SZ /d "%~dp0%runbat%"
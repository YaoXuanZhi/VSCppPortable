:::::::::::::::: Visual Studio Code Portable Launcher Version 1.0 BY ҫ��֮ ::::::::::::::::
::���Ҽ��˵����ļ���/�������һ�ʱ����
@echo off
::�����Ҽ��˵��������
@set desc="Open with C&ode - OSS"
::���ô���뻷����BAT
@set runbat="RunCodeEx.bat"
::������·������
@set subname="VSCodeEx"
::ȥ��˫���ţ���Ҫ��Ϊ�˼��ݰ����˿ո���ļ�����·��
@set "runbat=%runbat:"=%"
@set "subname=%subname:"=%"
::���ע�����Ϣ
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%" /v "" /t REG_SZ /d %desc%
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%\command" /v ""  /t REG_EXPAND_SZ /d "\"%~dp0%runbat%\" \"%%V\"
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%" /v "Icon" /t REG_EXPAND_SZ /d "%~dp0Code.exe"

@reg add "HKEY_CURRENT_USER\Software\Classes\*\shell\%subname%" /v "" /t REG_SZ /d %desc%
@reg add "HKEY_CURRENT_USER\Software\Classes\*\shell\%subname%\command" /v "" /t REG_EXPAND_SZ /d "\"%~dp0%runbat%\" \"%%V\"
@reg add "HKEY_CURRENT_USER\Software\Classes\*\shell\%subname%" /v "Icon" /t REG_EXPAND_SZ /d "%~dp0Code.exe"

@reg add "HKEY_CLASSES_ROOT\Directory\shell\%subname%" /v "" /t REG_SZ /d %desc%
@reg add "HKEY_CLASSES_ROOT\Directory\shell\%subname%\command" /v "" /t REG_EXPAND_SZ /d "\"%~dp0%runbat%\" \"%%V\"
@reg add "HKEY_CLASSES_ROOT\Directory\shell\%subname%" /v "Icon" /t REG_EXPAND_SZ /d "%~dp0Code.exe"
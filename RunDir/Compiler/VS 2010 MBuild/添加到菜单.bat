::���Ҽ��˵����ļ���/�������һ�ʱ����
@echo off
::�ж��Ƿ��Ѿ���ȡ�˹���Ա���
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա�������&&Pause >NUL&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
::�����Ҽ��˵��������
@set desc="����VS 2010���뻷��"
::���ô���뻷����BAT
@set runbat="vcvars32Plus_VS10.0.bat"
::������·������
@set subname="msvc10.0"
::ȥ��˫���ţ���Ҫ��Ϊ�˼��ݰ����˿ո���ļ�����·��
@set "runbat=%runbat:"=%"
@set "subname=%subname:"=%"
::���ע�����Ϣ
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%" /v "" /t REG_SZ /d %desc%
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%\command" /v ""  /t REG_SZ /d "%~dp0%runbat%"
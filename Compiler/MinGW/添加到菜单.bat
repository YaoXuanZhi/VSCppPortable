::���Ҽ��˵����ļ���/�������һ�ʱ����
@echo off
::�����Ҽ��˵��������
@set desc="����MinGW���뻷��"
::���ô���뻷����BAT
@set runbat="mingwvars.bat"
::������·������
@set subname="mingw"
::ȥ��˫���ţ���Ҫ��Ϊ�˼��ݰ����˿ո���ļ�����·��
@set "runbat=%runbat:"=%"
@set "subname=%subname:"=%"
::���ע�����Ϣ
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%" /v "" /t REG_SZ /d %desc%
@reg add "HKEY_CLASSES_ROOT\Directory\background\shell\%subname%\command" /v ""  /t REG_SZ /d "%~dp0%runbat%"
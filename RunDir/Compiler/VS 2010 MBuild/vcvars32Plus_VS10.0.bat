@echo off

::����VS 2010��VC���������·��
::@set VSVCPath="C:\Users\John\Videos\VS 2010 Console\VC10.0"
@set VSVCPath="%~dp0VC10.0"

::����Windows SDK������·��
::@set WinSDKPath="C:\Users\John\Videos\VS 2010 Console\Windows SDK\v7.1A"
@set WinSDKPath="%~dp0\Windows SDK\v7.1A"

::����OpenGL������·��
@set GLPath="%~dp0\OpenGL"

::��·���п��ܴ��ڵ�˫����ȥ��
@set "VSVCPath=%VSVCPath:"=%"
@set "WinSDKPath=%WinSDKPath:"=%"
@set "GLPath=%GLPath:"=%"

::���û������������ڿո��·����Ҫ��˫���Ű���
@set PATH="%GLPath%\BIN";"%VSVCPath%\BIN";"%WinSDKPath%\BIN";"%windir%\SYSTEM";"%PATH%"

::���ô�������ͷ�ļ�·����·������Ҫ˫����
@set INCLUDE=%GLPath%\INCLUDE;%VSVCPath%\atlmfc\INCLUDE;%VSVCPath%\INCLUDE;%WinSDKPath%\INCLUDE;%INCLUDE%

::���ø�������Ŀ¼�����ڿո��·����Ҫ��˫���Ű���
@set LIB="%GLPath%\LIB";"%VSVCPath%\LIB";"%VSVCPath%\atlmfc\LIB";"%WinSDKPath%\Lib";%LIB%

::@echo �Ѿ����Microsoft Visual C++ ���ߵ�ʹ�û�����o(��_��)o
%windir%\SYSTEM32\cmd.exe
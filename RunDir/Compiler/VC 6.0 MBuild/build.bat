@echo off

::����VC 6.0��VC�����Win SDK������·����
::ע�⣬�������Ѿ��������߼�����һ���ˣ���˽���һ��·������
::@set VCPath="C:\Users\John\Videos\VC 6.0 MBuild\VC98"
@set VCPath="%~dp0VC98"

::@set WinSDKPath="C:\Users\John\Videos\VS 2010 Console\Windows SDK\v7.1A"
@set WinSDKPath="%~dp0Microsoft SDK"

::��·���п��ܴ��ڵ�˫����ȥ��
@set "VCPath=%VCPath:"=%"
@set "WinSDKPath=%WinSDKPath:"=%"

::���û������������ڿո��·����Ҫ��˫���Ű���
@set PATH="%VCPath%\BIN";"%WinSDKPath%\BIN";"%windir%\SYSTEM";%PATH%

::���ô�������ͷ�ļ�·����·������Ҫ˫����
@set INCLUDE=%VCPath%\ATL\INCLUDE;%VCPath%\INCLUDE;%VCPath%\MFC\INCLUDE;%WinSDKPath%\include;%INCLUDE%

::���ø�������Ŀ¼�����ڿո��·����Ҫ��˫���Ű���
@set LIB="%VCPath%\LIB";"%VCPath%\MFC\LIB";"%WinSDKPath%\Lib";%LIB%

::ͨ��makefile����
if [%1]==[] goto SetDefaultMak else goto SetDefinedMak

:SetDefinedMak
@set makName=%1
goto build

:SetDefaultMak
@set makName=makefile
goto build

:build
nmake -f %makName%
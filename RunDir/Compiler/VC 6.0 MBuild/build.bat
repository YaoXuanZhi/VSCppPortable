@echo off

::设置VC 6.0的VC组件和Win SDK的所在路径，
::注意，在这里已经将这两者集成在一起了，因此仅需一个路径即可
::@set VCPath="C:\Users\John\Videos\VC 6.0 MBuild\VC98"
@set VCPath="%~dp0VC98"

::@set WinSDKPath="C:\Users\John\Videos\VS 2010 Console\Windows SDK\v7.1A"
@set WinSDKPath="%~dp0Microsoft SDK"

::将路径中可能存在的双引号去掉
@set "VCPath=%VCPath:"=%"
@set "WinSDKPath=%WinSDKPath:"=%"

::设置环境变量，存在空格的路径需要用双引号包裹
@set PATH="%VCPath%\BIN";"%WinSDKPath%\BIN";"%windir%\SYSTEM";%PATH%

::设置待搜索的头文件路径，路径不需要双引号
@set INCLUDE=%VCPath%\ATL\INCLUDE;%VCPath%\INCLUDE;%VCPath%\MFC\INCLUDE;%WinSDKPath%\include;%INCLUDE%

::设置附加依赖目录，存在空格的路径需要用双引号包裹
@set LIB="%VCPath%\LIB";"%VCPath%\MFC\LIB";"%WinSDKPath%\Lib";%LIB%

::通过makefile编译
if [%1]==[] goto SetDefaultMak else goto SetDefinedMak

:SetDefinedMak
@set makName=%1
goto build

:SetDefaultMak
@set makName=makefile
goto build

:build
nmake -f %makName%
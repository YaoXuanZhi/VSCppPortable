@echo off

::设置VS 2010的VC组件的所在路径
::@set VSVCPath="C:\Users\John\Videos\VS 2010 Console\VC10.0"
@set VSVCPath="%~dp0VC10.0"

::设置Windows SDK的所在路径
::@set WinSDKPath="C:\Users\John\Videos\VS 2010 Console\Windows SDK\v7.1A"
@set WinSDKPath="%~dp0\Windows SDK\v7.1A"

::设置OpenGL的所在路径
@set GLPath="%~dp0\OpenGL"

::将路径中可能存在的双引号去掉
@set "VSVCPath=%VSVCPath:"=%"
@set "WinSDKPath=%WinSDKPath:"=%"
@set "GLPath=%GLPath:"=%"

::设置环境变量，存在空格的路径需要用双引号包裹
@set PATH="%GLPath%\BIN";"%VSVCPath%\BIN";"%WinSDKPath%\BIN";"%windir%\SYSTEM";"%PATH%"

::设置待搜索的头文件路径，路径不需要双引号
@set INCLUDE=%GLPath%\INCLUDE;%VSVCPath%\atlmfc\INCLUDE;%VSVCPath%\INCLUDE;%WinSDKPath%\INCLUDE;%INCLUDE%

::设置附加依赖目录，存在空格的路径需要用双引号包裹
@set LIB="%GLPath%\LIB";"%VSVCPath%\LIB";"%VSVCPath%\atlmfc\LIB";"%WinSDKPath%\Lib";%LIB%

::@echo 已经搭建好Microsoft Visual C++ 工具的使用环境了o(∩_∩)o
%windir%\SYSTEM32\cmd.exe
::搭建MinGW的编译环境
@set PATH=%~dp0bin;%PATH%

::通过makefile编译
if [%1]==[] goto SetDefaultMak else goto SetDefinedMak

:SetDefinedMak
@set makName=%1
goto build

:SetDefaultMak
@set makName=makefile
goto build

:build
mingw32-make -f %makName%
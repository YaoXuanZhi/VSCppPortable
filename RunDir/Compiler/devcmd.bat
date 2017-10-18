@echo off

@if [%1] == [mingw] goto mingw
@if [%1] == [msvc6.0] goto msvc6.0
@if [%1] == [msvc10.0] goto msvc10.0
@if [%1] == [mingw_build] goto mingw_build
@if [%1] == [msvc6.0_build] goto msvc6.0_build
@if [%1] == [msvc10.0_build] goto msvc10.0_build

:mingw
REM @echo 进入到MinGW的编译环境
@call "%~dp0MinGW\mingwvars.bat"
@goto end

:msvc6.0
REM @echo 进入到VC 6.0的编译环境
@call "%~dp0VC 6.0 MBuild\VCVARS32Plus_VC6.0.BAT" 
@goto end

:msvc10.0
REM @echo 进入到VS 2010的编译环境
@call "%~dp0VS 2010 MBuild\vcvars32Plus_VS10.0.bat"
@goto end

:mingw_build
REM @echo 直接使用MinGW编译
@call "%~dp0MinGW\build.bat" %2
@goto end

:msvc6.0_build
REM @echo 直接使用VC 6.0编译
@call "%~dp0VC 6.0 MBuild\build.BAT" %2 
@goto end

:msvc10.0_build
REM @echo 直接使用VS 2010编译
@call "%~dp0VS 2010 MBuild\build.BAT" %2
@goto end

:end

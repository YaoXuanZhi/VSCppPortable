@echo off

@if [%1] == [/?] goto useinfo
@if [%1] == [mingw] goto mingw
@if [%1] == [msvc6.0] goto msvc6.0
@if [%1] == [msvc10.0] goto msvc10.0
@if [%1] == [mingw_build] goto mingw_build
@if [%1] == [msvc6.0_build] goto msvc6.0_build
@if [%1] == [msvc10.0_build] goto msvc10.0_build

:useinfo
REM @echo ��ӡʹ��˵��
@echo [-------------------ʹ��˵��----------------------
@echo "mingw            -- ����mingw���뻷��"
@echo "msvc6.0          -- ����msvc6.0���뻷��"
@echo "msvc10.0         -- ����msvc10.0���뻷��"
@echo "mingw_build      -- ֱ��ʹ��mingw����makefile"
@echo "msvc6.0_build    -- ֱ��ʹ��msvc6.0����makefile"
@echo "msvc10.0_build   -- ֱ��ʹ��msvc10.0����makefile"
@echo ---------------------ʹ��˵��---------------------]
@goto end

:mingw
REM @echo ���뵽MinGW�ı��뻷��
@call "%~dp0MinGW\mingwvars.bat"
@goto end

:msvc6.0
REM @echo ���뵽VC 6.0�ı��뻷��
@call "%~dp0VC 6.0 MBuild\VCVARS32Plus_VC6.0.BAT" 
@goto end

:msvc10.0
REM @echo ���뵽VS 2010�ı��뻷��
@call "%~dp0VS 2010 MBuild\vcvars32Plus_VS10.0.bat"
@goto end

:mingw_build
REM @echo ֱ��ʹ��MinGW����
@call "%~dp0MinGW\build.bat" %2
@goto end

:msvc6.0_build
REM @echo ֱ��ʹ��VC 6.0����
@call "%~dp0VC 6.0 MBuild\build.BAT" %2 
@goto end

:msvc10.0_build
REM @echo ֱ��ʹ��VS 2010����
@call "%~dp0VS 2010 MBuild\build.BAT" %2
@goto end

:end

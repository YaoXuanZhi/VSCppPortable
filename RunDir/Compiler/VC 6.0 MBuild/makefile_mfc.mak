#��������ʾ��α���MFC����
##########################��������ʽ��makefile���##########################
#�����������ɵĿ�ִ���ļ����� 
ProjName=MFCDemo.exe

#���ɶ������ļ�֮�������ʱ�ļ�
All:$(ProjName) clean

#�����Ҫ����LIB�ĵط� 
NormalLIB=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib

#ͨ�õ����ӵ�������Ϣ 
LinkProj=/nologo /subsystem:windows /incremental:no

#����Ŀ���ļ�
$(ProjName):cppCompileStep rcCompileStep
    @echo ����Ŀ���ļ�
    Link.exe MFCDemo.obj MFCDemoDlg.obj StdAfx.obj MFCDemo.res $(NormalLIB) $(LinkProj) /OUT:$(ProjName)

#��������ΪUNICODE��MBCS
StrType=MBCS

#ͨ�õı���Դ�ļ���������Ϣ��ע�⣬��VC6.0�У���û��֧��/Zc:wchar_tŶ
CLProj=/MD /EHsc /c /W4 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_$(StrType)" /D "$(StrType)" /D "_AFXDLL"

#����Դ�ļ�
cppCompileStep:
    @echo ����Դ�ļ�
    cl.exe $(CLProj) MFCDemo.cpp MFCDemoDlg.cpp StdAfx.cpp

#ͨ�õ�RC��Դ�ļ������������Ϣ
RSC_PROJ=/l 0x804 /d "NDEBUG" /d "_AFXDLL" /fo"MFCDemo.res"

#������Դ�ļ�
rcCompileStep:
    rc.exe $(RSC_PROJ) .\MFCDemo.rc

#����м��ļ�
clean:
    @echo ����м��ļ�
    @del *.obj *.idb *.pdb
    @echo ִ����ɣ�������\(^_^)(^_^)/

##########################��������ʽ��makefile���##########################
    
#ע�⣬��makefile�ļ�֮�У�ִ�����֮ǰ������һ���ո���ˣ���ע�ͷ��š�#��֮��
#����Ҫ�����β�������һ���ո� ��������nmake /f xxx.makefile����ʧ��

##########################��������ʽ��makefile���##########################
#�����������ɵĿ�ִ���ļ����� 
ProjName=��ʾ.exe

All:$(ProjName) clean

#�����Ҫ����LIB�ĵط� 
NormalLIB=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib

#kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:no /pdb:"Release/testdemo.pdb" /machine:I386 /out:"Release/testdemo.exe" 
#ͨ�õ����ӵ�������Ϣ 
LinkProj=/nologo /subsystem:windows /incremental:no

#����Ŀ���ļ� 
$(ProjName):Demo.obj
    @echo ����Ŀ���ļ�
    Link.exe Demo.obj AppWnd.obj CWndFrame.obj WndShadow.obj $(NormalLIB) $(LinkProj) /OUT:$(ProjName)

#��������ΪUNICODE��MBCS
StrType=MBCS

#ͨ�õı���Դ�ļ���������Ϣ��ע�⣬��VC6.0�У���û��֧��/Zc:wchar_tŶ
CLProj=/W4 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_$(StrType)" /D "$(StrType)" /MT /EHsc /c

#����Դ�ļ� 
Demo.obj:Demo.cpp
    @echo ����Դ�ļ�
    cl.exe $(CLProj) Demo.cpp AppWnd.cpp WndFrame\CWndFrame.cpp ThirdPart\WndShadow\WndShadow.cpp

#����м��ļ�
clean:
    @echo ����м��ļ�
    @del *.obj *.idb *.pdb
    @echo ִ����ɣ�������

##########################��������ʽ��makefile���##########################
    
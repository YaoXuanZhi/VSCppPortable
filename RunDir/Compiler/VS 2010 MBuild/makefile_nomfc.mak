#注意，在makefile文件之中，执行语句之前必须有一个空格，因此，在注释符号“#”之后，
#还需要在其结尾处添加上一个空格“ ”，否则“nmake /f xxx.makefile”会失败

##########################下面是正式的makefile语句##########################
#设置最终生成的可执行文件名称 
ProjName=演示.exe

All:$(ProjName) clean

#填充需要连接LIB的地方 
NormalLIB=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib

#kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:no /pdb:"Release/testdemo.pdb" /machine:I386 /out:"Release/testdemo.exe" 
#通用的链接的配置信息 
LinkProj=/nologo /subsystem:windows /incremental:no

#连接目标文件 
$(ProjName):Demo.obj
    @echo 链接目标文件
    Link.exe Demo.obj AppWnd.obj CWndFrame.obj WndShadow.obj $(NormalLIB) $(LinkProj) /OUT:$(ProjName)

#可以设置为UNICODE或MBCS
StrType=MBCS

#通用的编译源文件的设置信息，注意，在VC6.0中，还没有支持/Zc:wchar_t哦
CLProj=/W4 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_$(StrType)" /D "$(StrType)" /MT /EHsc /c

#编译源文件 
Demo.obj:Demo.cpp
    @echo 编译源文件
    cl.exe $(CLProj) Demo.cpp AppWnd.cpp WndFrame\CWndFrame.cpp ThirdPart\WndShadow\WndShadow.cpp

#清空中间文件
clean:
    @echo 清空中间文件
    @del *.obj *.idb *.pdb
    @echo 执行完成，请验收

##########################上面是正式的makefile语句##########################
    
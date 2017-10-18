#注意，命令行前面需要输入tab哦
#exe=./release/main.out  ### 定义宏（变量）  
exe=main.exe  ### 定义宏（变量）  
  
### 链接目标文件xxx.o,从而生成可执行文件  
$(exe):
	g++ -o $(exe) -g main.cpp  

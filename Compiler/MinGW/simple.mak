#ע�⣬������ǰ����Ҫ����tabŶ
#exe=./release/main.out  ### ����꣨������  
exe=main.exe  ### ����꣨������  
  
### ����Ŀ���ļ�xxx.o,�Ӷ����ɿ�ִ���ļ�  
$(exe):
	g++ -o $(exe) -g main.cpp  

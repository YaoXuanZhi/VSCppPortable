>本项目是一个快速在VSCode内部署C/C++开发环境的便捷包，目前已经集成了MinGW、VC 6.0以及VS2010三个编译环境，如果想自己基于VSCode来定制一个专属的开发环境，那么参照`...\RunDir\Compiler\devcmd.bat`文件的内容，自行修改即可。当然，这个便捷包其实可以进一步深度定制，比如增加x64、x86等可选的编译参数，不过，本人觉得这样有违初衷了，毕竟VSCode虽然很好很强大，但是想让它媲美成熟的商用IDE，还有相当长的路要走，因此个人仅仅将其定位为一个可供定制的高级文本编辑器而已，用它来编写一些简单的C/C++代码段还是不错的，作为C/C++初学者的开发环境也是蛮不错的`~O(∩_∩)O~`

#### 以下是其目录结构：
```text
   VSCode安装目录
     |
     +---+其它VS安装目录文件
     |
     +---RunCode.bat
     |
     +----+RunDir
             |
             +----+User
             |
             +----+configs(mingw)
             |
             +----+configs(msvc)
             |
             +----+Compiler
                      |
                      +----+MinGW
                      |
                      +----+VC 6.0 MBuild
                      |
                      +----+VS 2010 MBuild
                      |
                      +----devcmd.bat
```

### 使用说明
 - 1.直接将Compiler文件夹下的压缩包 `MinGW.rar`、`VC 6.0 MBuild.rar`、`VS 2010 MBuild.rar`解压到所在文件夹中（PS：直接选中压缩包右键执行 **解压到当前文件夹** 命令即可）
   >![image](https://user-images.githubusercontent.com/14124918/31783519-13a10e90-b531-11e7-999a-08dc11ff7d86.png)

 - 2.在运行VSCode的时候，点击RunCode.bat来执行Code.exe即可
   >![image](https://user-images.githubusercontent.com/14124918/31770955-c29c715c-b50c-11e7-9031-cbb6900061fe.png)

 - 3.安装 **ms-vscode.cpptools** 插件

 - 4.在VSCode中调试C/C++工程的演示

##### 注意事项
 - 1.VSCode的版本最好是VSCode 1.10.0以上，以是否在工具栏上有 **任务(T)** 为准，如下图所示：
   >![image](https://user-images.githubusercontent.com/14124918/31769090-a991e9d8-b504-11e7-8c71-1daa504ab33d.png)

 - 2.需要将终端类型设为cmd.exe，这个是与task.json里面的 **"type": "shell"** 是相匹配的，如下所示：
   >![image](https://user-images.githubusercontent.com/14124918/31769252-7639d1f8-b505-11e7-99cd-6f63b2acd8d0.png)

 - 3.GDB调试的源码的所在路径不能包含非ASCII字符，但是VSDBG是支持的，如下图所示：
   >![image](https://user-images.githubusercontent.com/14124918/31782299-2990769a-b52d-11e7-99ca-f6c691acdb9b.png)

 - 4.在使用MSVC来调试的时候，可能会存在被调试的源文件和想要调试的文件同时存在的情况，这个是vsdbg的一个bug，vsdbg调试的源文件的路径的字母必须是小写的，如果当前被调试的源文件的路径包含了字母非全部小写的情形，那么它就会额外打开一个同名文件并调试，区别仅仅在于路径上的字母全为小写，如下图所示：
   >![image](https://user-images.githubusercontent.com/14124918/31782366-46381ad2-b52d-11e7-9aad-da18c64d3ffe.png)
 
 - 5.目前VC 6.0是支持编译但是并不支持调试，这个是由 **ms-vscode.cpptools** 插件提供的vsdbg决定的。

##### 参考资料
 - [【VSCode】Windows下VSCode便携式c/c++环境【更新】](http://blog.csdn.net/c_duoduo/article/details/52083494)
 - [【VSCode】【VSCode】Windows下VSCode编译调试c/c++【更新】](http://blog.csdn.net/c_duoduo/article/details/51615381)
 - [VSCode实现C++代码提示、语法高亮、编译和调试](http://m.blog.csdn.net/caoshiying/article/details/78122073)

 为此项目创建三个分支，具体功能如下所示：
  - master：侧重将C/C++的编译环境可以快速在Vim和VSCode等高级文本编辑器上部署
  - vscode：侧重在VSCode之中快速部署一个C/C++的开发环境，方便开发者开箱即用
  - vim：其实主要集中在GVim上，侧重在Vim之中快速部署一个C/C++的开发环境，方便开发者开箱即用

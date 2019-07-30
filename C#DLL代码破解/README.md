# C# DLL代码破解教程 （以Unity为例）

### 第一步：

找到需要破解的 DLL，Unity 的 C# 逻辑代码是放在 Assembly-CSharp.dll 里面的

> 【DLL 文件放在 Unity 导出项目的 xxx_Data/Manager 里面】

### 第二步：

为了更好地读懂要破解的代码，可以使用 ILSpy 打开它，查看伪 C# 代码

> 【ILSpy 地址：https://github.com/icsharpcode/ILSpy】

![ScreenShot](https://github.com/hu243285237/MyRepository/blob/master/C%23DLL代码破解/ScreenShot/ScreenShot01.png)

### 第三步：

使用 ildasm.exe 将 DLL 转为 IL 代码，点击 “文件/转储/确定”

> 【ildasm.exe 的位置在 C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Bin】

导出的文件后缀名为 .il，一起导出的还有一个 .res 文件

![ScreenShot](https://github.com/hu243285237/MyRepository/blob/master/C%23DLL代码破解/ScreenShot/ScreenShot02.png)

### 第四步：

使用写字板之类的工具打开 .il 文件，更改你想破解的代码并保存，比如将 brfalse 改为 brtrue

![ScreenShot](https://github.com/hu243285237/MyRepository/blob/master/C%23DLL代码破解/ScreenShot/ScreenShot03.png)

### 第五步：

使用 ilasm.exe 将 .il 文件生成 DLL，但并不是双击打开它，而是需要使用命令语句

> 【ilasm.exe 的位置在 C:\Windows\Microsoft.NET\Framework\v4.0.30319】

找到之前导出的 .il 存放的文件夹，Shift + 鼠标右键，点击 “在此打开PowerShell窗口”

> 【可能 Win10 才有 PowerShell，总之在此处打开个命令行窗口】

接着输入命令 C:\Windows\Microsoft.NET\Framework\v4.0.30319/ilasm.exe /dll/resource=ilName.res ilName.il

> 【注意上面命令有两个地方有空格】

执行成功后在同文件夹可以找到你更改过后的 DLL，将这个 DLL 改为原来的名字并替换到原来的位置，破解结束

![ScreenShot](https://github.com/hu243285237/MyRepository/blob/master/C%23DLL代码破解/ScreenShot/ScreenShot04.png)

### 总结：

破解过程为： DLL -> IL -> 更改 IL 代码 -> DLL -> 替换

### 破解案例：

https://github.com/hu243285237/MyRepository/tree/master/C%23DLL代码破解/Unity破解案例

+ 因为 Unity 导出工程太大，所以请自行创建一个新工程将 unitypackage 包导入进去，然后导出成 exe

+ 这里更改 IL 代码是将 brtrue 改为了 brfalse，即当输错密码时认定为 “成功”，输对密码时认定为 “失败”，也有许多其他更改的办法可自己去试

+ 改 IL 代码的关键点是，读懂逻辑，找到要破解的函数名或变量，更改逻辑代码，上图画红框的地方为关键点

# C# DLL代码破解教程 （以Unity为例）

### 第一步：

找到需要破解的 DLL，Unity 的 C# 逻辑代码是放在 Assembly-CSharp.dll 里面的

> 【这个 DLL 文件放在 xxx_Data/Manager 里面】

### 第二步：

为了更好地读懂要破解地代码，使用 ILSpy 打开它，查看伪 C# 代码

### 第三步：

使用 ildasm.exe 将 DLL 转为 IL 代码

> 【ildasm.exe 的位置在 C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Bin】

导出的文件后缀名为 .il

一起导出的还有一个 .res 文件

### 第四步：

使用写字板之类的工具打开 .il 文件

更改你想破解的代码并保存

### 第五步：

使用 ilasm.exe 将 .il 文件生成 DLL

> 【ilasm.exe 的位置在 C:\Windows\Microsoft.NET\Framework\v4.0.30319】

但并不是双击打开它，而是需要使用命令语句

找到之前导出的 .il 存放的文件夹
 
Shift + 鼠标右键

点击 “在此打开PowerShell窗口”

> 【可能 Win10 才有 PowerShell，总之在此处打开个命令行窗口】

接着输入命令 C:\Windows\Microsoft.NET\Framework\v4.0.30319/ilasm.exe /dll/resource=ilName.res ilName.il

> 【注意上面命令有两个地方有空格】

执行成功后在同文件夹可以找到你更改过后的 DLL

将这个 DLL 替换到原来的位置

破解结束

### 总结：

破解过程为： DLL -> IL -> 更改 IL 代码 -> DLL -> 替换

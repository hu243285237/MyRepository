# C# DLL代码破解教程

-准备好需要破解的DLL

-使用ILSpy打开它，查看C#代码

-使用ildasm.exe将DLL转为IL代码

-ildasm.exe的位置在 C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Bin

-导出的文件后缀名为.il

-一起导出的还有一个.res文件

-使用写字板之类的工具打开.il文件

-更改你想破解的代码

-保存

-使用ilasm.exe将.il文件生成DLL

-ilasm.exe的位置在 C:\Windows\Microsoft.NET\Framework\v4.0.30319

-但是并不是双击打开它

-而是需要使用命令语句

-找到.il存放的文件夹

-Shift + T + 鼠标右键

-点击 在此打开PowerShell窗口

-输入命令 C:\Windows\Microsoft.NET\Framework\v4.0.30319/ilasm.exe /dll/resource=ilName.res ilName.il

-注意上面命令有两个地方有空格

-执行成功后在同文件夹可以找到DLL

-将这个DLL替换到原来的位置

-没了
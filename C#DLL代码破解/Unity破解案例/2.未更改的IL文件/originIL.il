
//  Microsoft (R) .NET Framework IL Disassembler.  Version 3.5.30729.1




// Metadata version: v2.0.50727
.assembly extern UnityEngine.UI
{
  .ver 1:0:0:0
}
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern UnityEngine
{
  .ver 0:0:0:0
}
.assembly 'Assembly-CSharp'
{

  // --- 下列自定义属性会自动添加，不要取消注释 -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .permissionset reqmin
             = {class 'System.Security.Permissions.SecurityPermissionAttribute, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089' = {property bool 'SkipVerification' = bool(true)}}
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module 'Assembly-CSharp.dll'
// MVID: {0C3A016E-AF7E-42E8-8E49-83B3AEC04539}
.custom instance void [mscorlib]System.Security.UnverifiableCodeAttribute::.ctor() = ( 01 00 00 00 ) 
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x08480000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Controller
       extends [UnityEngine]UnityEngine.MonoBehaviour
{
  .field public class [UnityEngine.UI]UnityEngine.UI.InputField password_input
  .field public class [UnityEngine.UI]UnityEngine.UI.Text info_text
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [UnityEngine]UnityEngine.MonoBehaviour::.ctor()
    IL_0006:  ret
  } // end of method Controller::.ctor

  .method public hidebysig instance void 
          _loginButton() cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [UnityEngine.UI]UnityEngine.UI.InputField Controller::password_input
    IL_0006:  callvirt   instance string [UnityEngine.UI]UnityEngine.UI.InputField::get_text()
    IL_000b:  ldstr      "yohsdg3h54sh6ehe5g4a67"
    IL_0010:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0015:  brfalse    IL_003f

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [UnityEngine.UI]UnityEngine.UI.Text Controller::info_text
    IL_0020:  ldstr      bytearray (3C 00 63 00 6F 00 6C 00 6F 00 72 00 3D 00 23 00   // <.c.o.l.o.r.=.#.
                                    46 00 30 00 38 00 30 00 38 00 30 00 3E 00 34 78   // F.0.8.0.8.0.>.4x
                                    E3 89 10 62 9F 52 01 FF 0D 7A 0E 54 EA 81 A8 52   // ...b.R...z.T...R
                                    00 90 FA 51 3C 00 2F 00 63 00 6F 00 6C 00 6F 00   // ...Q<./.c.o.l.o.
                                    72 00 3E 00 )                                     // r.>.
    IL_0025:  callvirt   instance void [UnityEngine.UI]UnityEngine.UI.Text::set_text(string)
    IL_002a:  ldarg.0
    IL_002b:  ldstr      "InvokeQuit"
    IL_0030:  ldc.r4     3.5
    IL_0035:  call       instance void [UnityEngine]UnityEngine.MonoBehaviour::Invoke(string,
                                                                                      float32)
    IL_003a:  br         IL_005f

    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [UnityEngine.UI]UnityEngine.UI.Text Controller::info_text
    IL_0045:  ldstr      bytearray (3C 00 63 00 6F 00 6C 00 6F 00 72 00 3D 00 23 00   // <.c.o.l.o.r.=.#.
                                    39 00 38 00 46 00 42 00 39 00 38 00 3E 00 34 78   // 9.8.F.B.9.8.>.4x
                                    E3 89 31 59 25 8D 01 FF 0D 7A 0E 54 EA 81 A8 52   // ..1Y%....z.T...R
                                    00 90 FA 51 3C 00 2F 00 63 00 6F 00 6C 00 6F 00   // ...Q<./.c.o.l.o.
                                    72 00 3E 00 )                                     // r.>.
    IL_004a:  callvirt   instance void [UnityEngine.UI]UnityEngine.UI.Text::set_text(string)
    IL_004f:  ldarg.0
    IL_0050:  ldstr      "InvokeQuit"
    IL_0055:  ldc.r4     3.5
    IL_005a:  call       instance void [UnityEngine]UnityEngine.MonoBehaviour::Invoke(string,
                                                                                      float32)
    IL_005f:  ret
  } // end of method Controller::_loginButton

  .method private hidebysig instance void 
          InvokeQuit() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  call       void [UnityEngine]UnityEngine.Application::Quit()
    IL_0005:  ret
  } // end of method Controller::InvokeQuit

} // end of class Controller


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 C:\Users\ckdz\Desktop\originIL.res

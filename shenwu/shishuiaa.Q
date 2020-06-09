[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=f94a8e8f-cd43-413b-97de-dcbb71465b6e
Description=shishuiaa
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]



Delay 1000


// 这个need_ver作为本脚本需要使用的插件版本. 如果要换插件时，记得更改这个值.

need_ver = "3.1233"

 

// 插件需要用到atl系统库,有些XP精简系统会把atl.dll精简掉. 为了防止注册失败，这里手动注册一下atl.dll

set ws=createobject("Wscript.Shell")
ws.run "regsvr32 atl.dll /s"
set ws=nothing

 

// 释放附件>>>>>>>>>>>>>>>>>>>

// 这里选择c盘的test-_game作为插件的基本目录 也就是SetPath对应的目录。所以所有资源都释放在此目录.

PutAttachment "e:\dmcj\dmfj","*.*"

// 这里要用到RegDll来注册插件，所以必须释放到Plugin. 但是切记不能把dm.dll释放到Plugin.那会导致插件失效.

PutAttachment ".\Plugin" ,"RegDll.dll"

 

// 插件注册开始>>>>>>>>>>>>>>>>>>>

// 下面开始注册插件,先尝试用RegDll来注册.这里必须使用绝对路径。以免有别人把dm.dll释放在系统目录.造成版本错误.

Call Plugin.RegDll.Reg("e:\dmcj\dm_2016912215034\dmcj3.1233\dm.dll") 



// 这里判断是否注册成功

set dm = createobject("dm.dmsoft")

ver = dm.Ver()

if ver <> need_ver then

    // 先释放先前创建的dm

    set dm = nothing

    // 再尝试用regsvr32 来注册. 这里必须使用绝对路径。以免有别人把dm.dll释放在系统目录.造成版本错误.

    set ws=createobject("Wscript.Shell")
    ws.run "regsvr32 e:\dmcj\dm_2016912215034\dmcj3.1233\dm.dll /s"
    set ws=nothing
    Delay 1500  

 

    // 再判断插件是否注册成功

    set dm = createobject("dm.dmsoft")

    ver = dm.Ver()

    if ver <> need_ver then

        // 这时，已经确认插件注册失败了。 弹出一些调试信息，以供分析.

        messagebox "插件版本错误,当前使用的版本是:"&ver&",插件所在目录是:"&dm.GetBasePath()

        messagebox "请关闭程序,重新打开本程序再尝试"

        endscript

    end if

end if

// 插件注册结束<<<<<<<<<<<<<<<



//这里设置插件基本目录

dm.SetPath "e:\dmcj\dmfj"

 

// 获取句柄

hwnd = dm.GetMousePointWindow()

 

// 绑定

dm_ret = dm.BindWindow(hwnd,"dx","dx","dx",0)

 

// 检测绑定返回值

if dm_ret = 0 then

    last_error = dm.GetLastError()

    // 如果是WIN7 VISTA WIN2008系统,检测当前系统是否有开启UAC
    if dm.GetOsType() = 3 then

        // 有开启UAC的话，尝试关闭

        if dm.CheckUAC() = 1 then

            if dm.SetUAC(0) = 1 then

                // 关闭UAC之后，必须重启系统才可以生效

                messagebox "已经关闭系统UAC设置，必须重启系统才可以生效。点击确定重启系统"

                dm.ExitOs 2
                Delay 2000

                endscript

            end if

        end if
    end if

    // 具体错误码的含义，可以参考函数GetLastError的说明.

    messagebox "绑定失败，错误码是:"&last_error
    messagebox "如果确定关闭了UAC,很可能是系统的防火墙拦截插件，请暂时关闭360等安全防火墙再尝试"

    endscript

end if

 
 Delay 2000
 MessageBox "111111"
 
 
 w = 0
 h = 0
 
dm_ret = dm.GetClientSize(hwnd,w,h) 
MessageBox "宽度:"& w &",高度:"& h



 

// 下面就是脚本部分了 省略

 

 

// 下面这是脚本结束时执行的部分

Sub OnScriptExit()

    dm.UnBindWindow

End Sub

 

// 结束


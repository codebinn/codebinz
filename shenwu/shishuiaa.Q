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


// ���need_ver��Ϊ���ű���Ҫʹ�õĲ���汾. ���Ҫ�����ʱ���ǵø������ֵ.

need_ver = "3.1233"

 

// �����Ҫ�õ�atlϵͳ��,��ЩXP����ϵͳ���atl.dll�����. Ϊ�˷�ֹע��ʧ�ܣ������ֶ�ע��һ��atl.dll

set ws=createobject("Wscript.Shell")
ws.run "regsvr32 atl.dll /s"
set ws=nothing

 

// �ͷŸ���>>>>>>>>>>>>>>>>>>>

// ����ѡ��c�̵�test-_game��Ϊ����Ļ���Ŀ¼ Ҳ����SetPath��Ӧ��Ŀ¼������������Դ���ͷ��ڴ�Ŀ¼.

PutAttachment "e:\dmcj\dmfj","*.*"

// ����Ҫ�õ�RegDll��ע���������Ա����ͷŵ�Plugin. �����мǲ��ܰ�dm.dll�ͷŵ�Plugin.�ǻᵼ�²��ʧЧ.

PutAttachment ".\Plugin" ,"RegDll.dll"

 

// ���ע�Ὺʼ>>>>>>>>>>>>>>>>>>>

// ���濪ʼע����,�ȳ�����RegDll��ע��.�������ʹ�þ���·���������б��˰�dm.dll�ͷ���ϵͳĿ¼.��ɰ汾����.

Call Plugin.RegDll.Reg("e:\dmcj\dm_2016912215034\dmcj3.1233\dm.dll") 



// �����ж��Ƿ�ע��ɹ�

set dm = createobject("dm.dmsoft")

ver = dm.Ver()

if ver <> need_ver then

    // ���ͷ���ǰ������dm

    set dm = nothing

    // �ٳ�����regsvr32 ��ע��. �������ʹ�þ���·���������б��˰�dm.dll�ͷ���ϵͳĿ¼.��ɰ汾����.

    set ws=createobject("Wscript.Shell")
    ws.run "regsvr32 e:\dmcj\dm_2016912215034\dmcj3.1233\dm.dll /s"
    set ws=nothing
    Delay 1500  

 

    // ���жϲ���Ƿ�ע��ɹ�

    set dm = createobject("dm.dmsoft")

    ver = dm.Ver()

    if ver <> need_ver then

        // ��ʱ���Ѿ�ȷ�ϲ��ע��ʧ���ˡ� ����һЩ������Ϣ���Թ�����.

        messagebox "����汾����,��ǰʹ�õİ汾��:"&ver&",�������Ŀ¼��:"&dm.GetBasePath()

        messagebox "��رճ���,���´򿪱������ٳ���"

        endscript

    end if

end if

// ���ע�����<<<<<<<<<<<<<<<



//�������ò������Ŀ¼

dm.SetPath "e:\dmcj\dmfj"

 

// ��ȡ���

hwnd = dm.GetMousePointWindow()

 

// ��

dm_ret = dm.BindWindow(hwnd,"dx","dx","dx",0)

 

// ���󶨷���ֵ

if dm_ret = 0 then

    last_error = dm.GetLastError()

    // �����WIN7 VISTA WIN2008ϵͳ,��⵱ǰϵͳ�Ƿ��п���UAC
    if dm.GetOsType() = 3 then

        // �п���UAC�Ļ������Թر�

        if dm.CheckUAC() = 1 then

            if dm.SetUAC(0) = 1 then

                // �ر�UAC֮�󣬱�������ϵͳ�ſ�����Ч

                messagebox "�Ѿ��ر�ϵͳUAC���ã���������ϵͳ�ſ�����Ч�����ȷ������ϵͳ"

                dm.ExitOs 2
                Delay 2000

                endscript

            end if

        end if
    end if

    // ���������ĺ��壬���Բο�����GetLastError��˵��.

    messagebox "��ʧ�ܣ���������:"&last_error
    messagebox "���ȷ���ر���UAC,�ܿ�����ϵͳ�ķ���ǽ���ز��������ʱ�ر�360�Ȱ�ȫ����ǽ�ٳ���"

    endscript

end if

 
 Delay 2000
 MessageBox "111111"
 
 
 w = 0
 h = 0
 
dm_ret = dm.GetClientSize(hwnd,w,h) 
MessageBox "����:"& w &",�߶�:"& h



 

// ������ǽű������� ʡ��

 

 

// �������ǽű�����ʱִ�еĲ���

Sub OnScriptExit()

    dm.UnBindWindow

End Sub

 

// ����

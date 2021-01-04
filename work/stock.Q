[General]
MacroID=4e0d1032-99d1-45fd-8a79-f0f48e09f003
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
Description=stock
Enable=0
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

[Attachment]
UEsDBBQAAgAIAIQ7+VDjDcB8wAAAANYFAAAGABEAcWQuYm1wVVQNAAci3xtfIt8bXyLfG1/FkEEKwkAMRceFOw/gDfQEHsC9d/RU3kAqLZWRFtd+MjaEPzPpLAQfBP7/Saah58ttG4QT6og6oHaoTdhLfv32Lfd/gO92GXmYLsy7oU7ngoGHoIJscSDp2m4LWOkFe2qympPILbVawMogkCj+usFgLbVawMookKjlirV03tgAxp4CiVquWEutFrASY0x3RsEmRKzgtJyVl2DfT1ZzEjlOy1mZBBVknYEaUwMYmxdI58y/A6+9F1TbcNUWWZ3BwAdQSwMEFAACAAgAeDv5UO6bt0i6AAAA4gUAAAcAEQBxeHouYm1wVVQNAAfg3htf4N4bX+DeG1+Nk0EKAjEMRevC1VzAIwjuPYB7b+qp3KmM0sG6tjQmxPQ3mQeR/39+BobB0/m6TY1jnX2dQ52pzibtWn757TU3Ruse2vod/9bZ3hmtIVToa/I6/qGzfTBaQ6QAr5xz/8lpwIzQuWhYNmFon4zWEFMgC69ShCm/GK0hpkAWXsGmYyE5ZxGidT66kn5WhHZBjPKVNZOHtvL+p09G21HT5KEtpdAvobVBVvBDwOZK+2mQEAsxZacf/i9M+QtQSwECFwsUAAIACACEO/lQ4w3AfMAAAADWBQAABgAJAAAAAAAAACAAgIEAAAAAcWQuYm1wVVQFAAci3xtfUEsBAhcLFAACAAgAeDv5UO6bt0i6AAAA4gUAAAcACQAAAAAAAAAgAICB9QAAAHF4ei5ibXBVVAUAB+DeG19QSwUGAAAAAAIAAgB7AAAA5QEAAAAA


[Script]
Rem start
KeyDown "Ctrl", 1
KeyPress "A", 1
KeyUp "Ctrl", 1
FindPic 1033,216,1286,826,"Attachment:\qxz.bmp",0.9,intX,intY
If intX > 0 And intY > 0 Then
    MoveTo intX, intY
    Delay 200
    LeftClick 1
    Delay 200
    MoveTo intX + 18, intY - 323
    Delay 200
    LeftClick 1
    Delay 200
End If
FindPic 1033,216,1286,826,"Attachment:\qd.bmp",0.9,intX,intY
If intX > 0 And intY > 0 Then 
MoveTo intX, intY
    Delay 200
    LeftClick 1
    Delay 1000
End If
Rem qd
FindPic 1033,216,1286,826,"Attachment:\qd.bmp",0.9,intX,intY
If intX > 0 And intY > 0 Then 
    Delay 500
    Goto qd
End If
KeyPress "PageDown", 1
Delay 300
Goto start

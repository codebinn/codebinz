[General]
MacroID=fd90de79-36e7-4d30-800f-3d77bafa28c5
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
Description=security
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

[Attachment]
UEsDBBQAAgAIABIsXVEMXZOZBAEAAOYFAAAGABEAcWQuYm1wVVQNAAfpU5pf6VOaX+lTml+9VKESgzAMZWJ2enpqXzA5Mb+fw/EXU/wBFo3EdJY7FC57EAihLWFMLNfelTbJS14SHs/3MRnkhn3FvmCfsA/Jebh/je9aKLv/YYU4XUlVPZ4rfBK5nFiynBosmpVdSmui1SYc9pelsylceveCTzW5djzwqw7NzAf+RGABB2wXxSmg3PaajOZRsIWjI2vyOBXiDDkL/tc48OrKBQ7cMLvRfDilrl3geCKpKhwmbRcOF6co9/LWBfnYvBktuqcPjHyMRjapk/kBD9zLXOZN3n6d074bpqlYE5kfqUx0ceNL1EscCZ21xFNoZASiJcDxKI9mpaclGn3QyJv/N21t8+MVcwPnA1BLAQIXCxQAAgAIABIsXVEMXZOZBAEAAOYFAAAGAAkAAAAAAAAAIACAgQAAAABxZC5ibXBVVAUAB+lTml9QSwUGAAAAAAEAAQA9AAAAOQEAAAAA


[Script]
Rem startgo
Delay 3000
FindPic 830,480,1300,690,"Attachment:\qd.bmp",0.9,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo intX, intY
    Delay 500
    LeftClick 1
    Delay 500
    MoveTo intX +100, intY+100
End If
Goto startgo
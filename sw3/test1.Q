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
MacroID=f3aebf7d-5ea4-4981-a3d9-3fad2a038cb4
Description=test1
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

[Script]


ar = Array(1, 2, 3)
TracePrint ar
TracePrint ar(0)
TracePrint ar(1)
TracePrint ar(2)

ar(0) = 5
TracePrint ar
TracePrint ar(0)
TracePrint ar(1)
TracePrint ar(2)

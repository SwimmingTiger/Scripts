[General]
SyntaxVersion=2
BeginHotkey=112
BeginHotkeyMod=4
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=113
StopHotkeyMod=4
RunOnce=1
EnableWindow=
MacroID=1e620c7c-df8e-41f5-8e9d-a7d7a0b15f37
Description=模拟打字
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
读取"D:\欲输入文本.txt"中的内容，并逐行打入。
适合于在无法批量粘贴命令的终端软件中批量输入命令。

[Script]
word = Plugin.File.ReadFileEx("D:\欲输入文本.txt")
//分割为行
Dim hang
hang = split(word, "|")
Delay 500
//循环打出每一行
For i = 0 To UBound(hang)
    SayString hang(i)
    KeyPress "Enter", 1
Next

Run, mmsys.cpl
WinWait, Sound ahk_exe rundll32.exe

ControlSend,SysListView321,{Down}{Down}{Down}, Sound ahk_exe rundll32.exe
ControlGet, isEnabled, Enabled ,, Button3, Sound ahk_exe rundll32.exe
if !isEnabled
	ControlSend,SysListView321,{Down}{Down}, Sound ahk_exe rundll32.exe    
ControlClick,Button2, Sound ahk_exe rundll32.exe 	; &Set Default
ControlClick,OK, Sound ahk_exe rundll32.exe

Run, "C:\Program Files (x86)\Driver4VR\Driver4VR.exe"
Sleep 10000

IfWinExist, ahk_class MonoVROutputWnd
{
  ; the next two commands work on The "Last Found" Window
  WinRestore
  WinActivate 

  Sleep 200
  Send, #+{right}
  Send, {Alt Down}{Enter}{Alt Up}
  Send, {Alt Up}  

}  
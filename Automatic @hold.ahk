#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

F1::
	WinWaitActive, Atlas Ragnarok Online
	WinSetTitle, BG Stalker
Return

$f:: ; Change to the key you want to spam
IfWinActive, BG Stalker
{
	Loop, 1
	{
		Send, {Alt down}
		Send, 1
		Send, {Alt up}
		Send, {f} ; Change to the key you want to spam
		mouseClick, left
		Send, {Alt down}
		Send, 1
		Send, {Alt up}
	}
}
IfWinNotActive, BG Stalker
	{
		Send, {f}
	}
Return

Enter::
	Suspend, Toggle
	Send, {Enter}
Return

F1::
	Suspend
Return

F2:: 
	Reload
Return

F3:: 
	ExitApp
Return
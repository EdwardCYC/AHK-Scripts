#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$f::
	Send, {Alt down}
	Sleep 1
	Send, 1
	Sleep 1
	Send, {Alt up}
	If GetKeyState("f", "P")
	{
		Send, {f}
		mouseClick, left	
	}
Return

$f Up::
		Send, {Alt down}
		Sleep 1
		Send, 1
		Sleep 1
		Send, {Alt up}
Return

Enter::
	Suspend, Toggle
	Send, {Enter}
Return

F1::
	Suspend
Return

F2::
	ExitApp
Return
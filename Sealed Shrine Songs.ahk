#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetKeyDelay, -1, -1

F1::
	WinWaitActive, Atlas Ragnarok Online
	WinSetTitle, Clown
Return

F2::
	WinWaitActive, Atlas Ragnarok Online
	WinSetTitle, Gypsy
Return

^1::
Loop
{
	ControlSend, , {f}, Clown
	ControlSend, , {f}, Clown
	Sleep 19000
	ControlSend, , {d}, Clown
	ControlSend, , {d}, Gypsy
	Sleep 50
}
Return

^2::
Loop
{
	ControlSend, , {d}, Clown
	ControlSend, , {d}, Gypsy
	Sleep 50
	ControlSend, , {f}, Clown
	ControlSend, , {f}, Gypsy
	Sleep 350
	ControlSend, , {d}, Clown
	ControlSend, , {d}, Gypsy
	Sleep 50
	ControlSend, , {g}, Clown
	ControlSend, , {g}, Gypsy
	Sleep 350
	ControlSend, , {d}, Clown
	ControlSend, , {d}, Gypsy
	Sleep 50
	ControlSend, , {h}, Clown
	Sleep 18000
}
Return


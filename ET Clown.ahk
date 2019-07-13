#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Plays Bragi every 3 minutes without being active
; Flashes 6 songs for certain MVPs

F10::
	WinWaitActive, Atlas Ragnarok Online
	WinSetTitle, Clown
Return

F1::
Loop
{
	ControlSend, , {f}, Clown
	Sleep 178000
	ControlSend, , {a}, Clown
	Sleep 2000
}
Return

F2::
Loop
{
	ControlSend, , {f}, Clown
	Sleep 300
	ControlSend, , {a}, Clown
	Sleep 300
	ControlSend, , {d}, Clown
	Sleep 300
	ControlSend, , {a}, Clown
	Sleep 300
	ControlSend, , {s}, Clown
	Sleep 300
	ControlSend, , {a}, Clown
	Sleep 300
	ControlSend, , {w}, Clown
	Sleep 300
	ControlSend, , {a}, Clown
	Sleep 300
	ControlSend, , {e}, Clown
	Sleep 300
	ControlSend, , {a}, Clown
	Sleep 300
	ControlSend, , {r}, Clown
	Sleep 17000
	ControlSend, , {a}, Clown
	Sleep 300
}
Return

F3:: 
	Pause
Return

F4::
	Reload
Return

F5::
	ExitApp
Return	
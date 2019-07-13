#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^1::
	WinWaitActive, Atlas Ragnarok Online
	WinSetTitle, Clown
Return

#1::
	WinWaitActive, Clown
	WinSetTitle, Atlas Ragnarok Online
Return

^2::
stopLoop = 0
Loop
{
	If stopLoop = 1
	{
		break
	}
	ControlSend, , {f down}{f up}, Clown
	Sleep 179000
	ControlSend, , {d down}{d up}, Clown
	Sleep 1000
}
Return

#s::
	stopLoop := !stopLoop
Return
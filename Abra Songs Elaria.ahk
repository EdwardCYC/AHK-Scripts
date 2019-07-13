#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^1::
	WinWaitActive, Elaria Woon Reloaded
	WinSetTitle, Clown
Return

#1::
	WinWaitActive, Clown
	WinSetTitle, Elaria Woon Reloaded
Return

^f::
stopLoop = 0
Loop
{
	If stopLoop = 1
	{
		break
	}
	ControlSend, , {g down}{g up}, Clown
	Sleep 55000
	ControlSend, , {a down}{a up}, Clown
	Sleep 500
}
Return

#s::
	stopLoop := !stopLoop
Return


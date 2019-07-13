#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetKeyDelay -1, -1

F1::
Send {d down}
Sleep 10
Send {l down}
Sleep 500
while A_TimeSinceThisHotkey < 1400
{
	Send {d down}
	Sleep 50
	Send {l down}
	Sleep 50
}
Send {l up}
Sleep 10
Send {d up}
Sleep 50
Send {F2}
Return

F2::
Send {d down}
Sleep 10
Send {j down}
Sleep 500
while A_TimeSinceThisHotkey < 1400
{
	Send {d down}
	Sleep 50
	Send {j down}
	Sleep 50
}
Send {j up}
Sleep 10
Send {d up}
Sleep 50
Send {F1}
Return

F5:: ExitApp
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$v::
{
	Send, {v}
	Loop, 3
	{
	mouseClick, left
	}
	Sleep 500
}
Return

Enter::
	Suspend, Toggle
	Send, {Enter}
Return

$RShift::
	Suspend, Toggle
Return
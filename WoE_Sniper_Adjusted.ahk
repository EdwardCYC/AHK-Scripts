#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$m::
Loop, 1
{
	Send, {m}
	MouseClick, left
	Sleep 100
	Send, {m}
	MouseClick, left
	Sleep 100
	Send, {b}
	Sleep 100
}
Return
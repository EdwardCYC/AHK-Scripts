#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F1::
Loop
{
	MouseClick, left, 100, 270
	Sleep 300000
	MouseClick, left, 1300, 240
	Sleep 300000
}
Return

F2:: Reload
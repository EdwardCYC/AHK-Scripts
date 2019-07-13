#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetKeyDelay -1, -1

^f::
Loop
{
	Send {f}
	Sleep 1
	MouseClick, left
	Sleep 1
}
Return

F1:: Reload

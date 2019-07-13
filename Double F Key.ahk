#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$F1::
	Send, {F1}
	mouseClick, left
	Sleep 10
	Send, {F3}
	mouseClick, left
	Sleep 10
Return
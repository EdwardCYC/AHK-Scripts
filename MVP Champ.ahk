#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$G::
	Send, g
	Click
	Send, h
Return

$F::
	Send, f
	Sleep, 1120
	Send, v
	Sleep, 500
	Send, f
Return
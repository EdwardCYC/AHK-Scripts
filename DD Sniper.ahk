#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$f::
	Send, {f}
	mouseClick, left
Return

$d::
	Send, {d}
	mouseClick, left
Return

$j::
	Send, {j}
	mouseClick, left
Return

F1::
	Pause
Return

F2::
	ExitApp
Return
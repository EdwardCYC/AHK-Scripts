#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Use this script to move with people by Bashing them on-screen.
; x is the Bash key.

SetKeyDelay, -1
SetBatchLines, -1

$x::
	Send, {Shift down}
	Send, {x}
	mouseClick, left
Return

$x Up::
	Send, {Shift up}
Return

F1:: ExitApp
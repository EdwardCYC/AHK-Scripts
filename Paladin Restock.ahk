#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

3::
	Send, {alt down}{3 down}
	Sleep 100
	Send, {alt up}{3 up}
Return

4::
	Send, {alt down}{6 down}
	Sleep 100
	Send, {alt up}{6 up}
Return
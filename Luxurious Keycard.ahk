#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; :*:l::Luxurious Keycard
; Return

SetKeyDelay, -1
SetBatchLines, -1

$a::
	Send {b}
	Sleep 100
	mouseClick, left, 645, 465
	Sleep 600
	Send {b}
	Sleep 100
	mouseClick, left, 840, 350
	Sleep 600
	Send {b}
	Sleep 100
	mouseClick, left, 675, 535
	Sleep 1000
	mouseClick, left, 620, 515
	Sleep 600
	Send, {Enter}
	Sleep 500
	SendInput Luxurious Keycard	
	Sleep 500
	Send {Enter}
	Sleep 500
	Send {Enter}
	Sleep 500
	Send {Enter}
	Sleep 300
	MouseMove, 720, 240
Return

F2::
	Suspend, Toggle
Return
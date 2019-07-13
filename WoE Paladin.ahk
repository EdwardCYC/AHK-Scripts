#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetBatchLines, -1
SetKeyDelay, -1
Return

$f::
	Send, {f}
	mouseClick, left
Return

$g::
	Send, {g}
	mouseClick, left
Return

Return

!c::
	Suspend, Toggle
	Send {Alt down}
	Sleep 1
	Send {c}
	Sleep 1
	Send {Alt up}
	Send {BS}
Return

; $z::
;	MouseMove, 50, 222, 10
; Return

; $a::
;	MouseMove, 640, 330, 10
; Return

$a::
	Send {Alt down}
	Sleep 100
	Send {z}
	Sleep 100
	Send {Alt up}
Return

$m::
	Send {m}
	Sleep 700
	Send {,}
	Sleep 700
	Send {.}
	Sleep 700
Return

; Bash clicking non-enemy characters to walk
$x::
	Send {Shift down}
	Sleep 1
	Send {x}
	Sleep 1
	mouseClick, left
Return

$x Up::
	Send {Shift up}
Return

Enter::
	Suspend, Toggle
	Send, {Enter}
Return

$RShift::
	Suspend, Toggle
Return

F1::
	Pause
Return

F2::
	ExitApp
Return
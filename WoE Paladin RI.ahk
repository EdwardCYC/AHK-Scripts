#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

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
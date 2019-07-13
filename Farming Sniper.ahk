#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

SetKeyDelay -1, -1

$e::
	Send {e}
	Sleep 1
	mouseClick, left
return

$d::
	Send {d}
	Sleep 1
	mouseClick, left
Return

$f::
	Send {f}
	Sleep 1
	mouseClick, left
Return

RShift::
	Suspend, Toggle
Return

F1::
	Suspend, Toggle
Return

F2:: ExitApp
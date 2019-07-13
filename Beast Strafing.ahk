#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This script is used to alternate between
; Double Strafing and Beast Strafing.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

SetKeyDelay -1,-1

$f::
    Send {f}
    Sleep 1
    MouseClick, Left
    Sleep 1
    Send {j}
    Sleep 1
    MouseClick, Left
Return

$RShift::
    Suspend, Toggle
Return

F2:: ExitApp
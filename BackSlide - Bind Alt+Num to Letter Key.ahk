#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

SetKeyDelay -1, -1

$s::
    Send {Alt down}
    Sleep 15
    Send {9}
    Sleep 15
    Send {Alt up}
Return

$f::
    Send {Alt down}
    Sleep 15
    Send {0}
    Sleep 15
    Send {Alt up}
Return

$RShift::
    Suspend, Toggle
Return

F1:: ExitApp
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

SetKeyDelay -1, -1

; Slow Mode
$2::
Loop
{
    mouseClick, left
    Sleep 50
    If(!GetKeyState("2","P"))
        Break
}
Return

; Fast Mode
$3::
Loop
{
    mouseClick, left
    Sleep 1
    If(!GetKeyState("3","P"))
        Break
}
Return

F2:: ExitApp
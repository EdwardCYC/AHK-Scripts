#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Put Scream on the Z key. Press script to start
; the loop to spam Scream.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

F1::
    WinWaitActive, Ragnarok
    WinSetTitle, Gypsy
Return

$z::
Loop
{
    ControlSend, , z, Gypsy
    Sleep 100
}
Return

F2:: ExitApp


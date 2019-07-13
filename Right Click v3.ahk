#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This script is used to move items into and
; out of the inventory automatically in RO.
; 
; Instructions:
; 1. Press 1 or M key to move one item.
; 2. Hold down 1 or M key to keep moving items.
; 3. Press F1 to suspend/unsuspend the script.
; 4. Press F2 to kill the script.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

SetKeyDelay -1, -1

$1::
Loop
{
    Send !{RButton}
    Sleep 50
    If(!GetKeyState("1","P"))
        Break
}
Return

F1:: 
    Suspend, Toggle
Return

F2:: ExitApp


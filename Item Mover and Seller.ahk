#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This is a script for Ragnarok Online.
; It allows you to move items from inventory to 
; storage and vice versa more easily than doing it
; manually.
;
; Note that it does not work for older clients
; that do not have the "Alt + Right Click" feature.
;
; Instructions:
; 1. Point at the item before pressing anything.
; 2. Press 1 to move items from inventory to
; storage, and vice versa. 
; 3. Press 2 to sell items after clicking the
; "sell" option on the tool dealer.
; 4. Press 3 to sell items faster (but harder
; to control than using hotkey 2). 
; 5. Holding down any of these keys will make
; them continue doing their thing.
; 
; Instructions 2:
; 1. Press Right Shift to suspend/unsuspend the
; script.
; 2. Press F2 to kill the script.


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

; Explains how to use script
F1::
MsgBox,
(
Instructions:
1. Point at the item before pressing anything.
2. Press 1 to move items from inventory to storage, and vice versa. 
3. Press 2 to sell items after clicking the "sell" option on the tool dealer.
4. Press 3 to sell items faster (but harder to control than using hotkey 2). 
5. Holding down any of these keys will make them continue doing their thing.

Instructions 2:
1. Press Right Shift, to suspend/unsuspend the script.
2. Press F2 to kill the script.

Note that it does not work for older clients that do not have the "Alt + Right Click" feature.
)
Return

$RShift:: 
    Suspend, Toggle
Return

F2:: ExitApp

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This script is used to move items into and
; out of the inventory automatically in RO.
; 
; Point to the item and hold down right click,
; and the script will move the items.
; Press F1 to suspend/unsuspend the script.
; Press F2 to kill the script.

$RButton::
  Loop
  { 
    Send {Alt Down}
    MouseClick, Right
    Send {Alt Up}
    If (!GetKeyState("RButton","P"))
      Break
  }
  Return

F1:: 
  Suspend, Toggle
  Return

F2:: ExitApp


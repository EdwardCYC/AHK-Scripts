#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This script presses the F9 key to teleport
; as long as it does not detect a blue pixel.
; This is used by Saki to teleport his merchant
; to an isolated cell in gefenia so that it can
; loot the items in the farmer's place instead
; of transferring the loot in and out of storage
; every time we need to sell them.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

$F5::
Loop
{
PixelSearch, PixX, PixY, 0, 0, 1600, 900, 0x0000FF, 5, Fast, rgb
if ErrorLevel = 1
{
send {F9}
Sleep, 600
}
}
return

F1::
    Suspend, Toggle
Return

Esc::ExitApp
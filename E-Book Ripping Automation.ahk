#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

; This script takes screenshots of a textbook in
; my school's online library. 
; Later on I will merge the images into a PDF
; so that I can read it offline.
; Greenshot is used to capture the screenshots.
; The Print Screen key was rebinded to a macro
; that captures the same region that was captured
; the last time.

$f::
Loop, 24
{
    Send {PgDn}
    Sleep 1500
    Send {PrintScreen}
    Sleep 1500
}
Return

F2:: ExitApp

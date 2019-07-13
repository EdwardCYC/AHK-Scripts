#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

; Press F1 to rename the window to Paladin
; Press F2 key to start the script
; Reflect shield on R hotkey
; @storeall command on Alt + 9

SetKeyDelay -1, -1

F1::
	WinGetTitle, Title, A
	If (Title != Paladin) {
		WinSetTitle, %Title%, , Paladin
	} else {
		WinSetTitle, %Title%, , %originalTitle%
	}
	originalTitle := Title
Return

F2::
Loop
{
	ControlSend, , r, Paladin
	Sleep 295000
	ControlSend, , !9, Paladin
	Sleep 5000
}
Return

$RShift::
	Suspend, Toggle
Return

F3:: ExitApp
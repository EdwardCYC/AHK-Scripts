#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

; Instructions:
; 1. Put both Gloria and Gospel on the G hotkey.
; 2. Rename High Priest window with CTRL+1 hotkey.
; 3. Rename Paladin window with CTRL+2 hotkey.
; 4. Run the script with F1.

SetKeyDelay -1, -1

^1::
	WinGetTitle, Title, A
	If (Title != "High Priest") {
		WinSetTitle, %Title%, , High Priest
	} else {
		WinSetTitle, %Title%, , %originalTitle%
	}
	originalTitle := Title
Return

^2::
	WinGetTitle, Title, A
	If (Title != "Paladin") {
		WinSetTitle, %Title%, , Paladin
	} else {
		WinSetTitle, %Title%, , %originalTitle%
	}
	originalTitle := Title
Return

F1::
Loop
{
	ControlSend, , {g up}{g down}, Paladin
	ControlSend, , {g up}{g down}, High Priest
	Sleep 20333
	ControlSend, , {g up}{g down}, High Priest
	Sleep 20333
	ControlSend, , {g up}{g down}, High Priest
	Sleep 20333
}
Return

$RShift:: Suspend, Toggle

F2:: ExitApp
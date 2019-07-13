#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

Delay := 500

$F1::
	BreakLoop = 0
	Loop
	{
		If (BreakLoop = 1)
			break
		MouseClick, Left, 690, 340
		Sleep %Delay%
		MouseClick, Left, 540, 333
		Sleep %Delay%
		MouseClick, Left, 540, 333
		Sleep %Delay%
		MouseClick, Left, 540, 333
		Sleep %Delay%
		MouseClick, Left, 540, 333
		Sleep %Delay%
		MouseClick, Left, 382, 398
		Sleep %Delay%
		MouseClick, Left, 495, 455
		Sleep %Delay%
		MouseClick, Left, 540, 333
		Sleep %Delay%
		MouseClick, Left, 540, 333
		Sleep %Delay%
		MouseClick, Left, 540, 333
		Sleep %Delay%
		MouseClick, Left, 382, 398
		Sleep %Delay%
		MouseClick, Left, 495, 455
		Sleep %Delay%
		MouseClick, Left, 540, 333
		Sleep %Delay%
		Send {Z}
		Sleep %Delay%
	}
Return

$F2::
	BreakLoop = 1
	Reload
Return

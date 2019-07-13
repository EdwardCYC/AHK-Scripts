#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

Delay := 50
ClickDelay := 120

F1::
Loop
{
	If (BreakLoop = 1)
		Break
	Sleep %Delay%
	Send {Alt Down}
	Sleep %Delay%
	Send {6}
	Sleep %Delay%
	Send {Alt Up}
	Sleep %Delay%
	Loop, 70
	{
		If (BreakLoop = 1)
			Break
		Sleep %Delay%
		MouseClick, Left, 480, 280
		Sleep %ClickDelay%
		MouseClick, Left, 480, 280
		Sleep %ClickDelay%
		MouseClick, Left, 480, 280
		Sleep %ClickDelay%
		Loop, 5
		{
			If (BreakLoop = 1)
				Break
			MouseClick, Left, 1180, 700
			Sleep %Delay%
			MouseClick, Left, 1180, 700
			Sleep %Delay%
			MouseClick, Left, 715, 525
			Sleep %ClickDelay%
			MouseClick, Left, 715, 525
			Sleep %ClickDelay%
		}
	}
}
Return

F2::
	BreakLoop = 1
Return

F3:: Reload
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^1::
	WinGetTitle, Title, A
	If (Title != "Clown") {
		WinSetTitle, %Title%, , Clown
	} else {
		WinSetTitle, %Title%, , %originalTitle%
	}
	originalTitle := Title
Return

^2::
	WinGetTitle, Title, A
	If (Title != "Gypsy") {
		WinSetTitle, %Title%, , Gypsy
	} else {
		WinSetTitle, %Title%, , %originalTitle%
	}
	originalTitle := Title
Return

^f::
stopLoop = 0
Loop
{
	If stopLoop = 1
	{
		break
	}
	ControlSend, , {g down}{g up}, Clown
	Sleep 1000
	ControlSend, , {f down}{f up}, Clown
	ControlSend, , {f down}{f up}, Gypsy
	Sleep 170000
	ControlSend, , {d down}{d up}, Clown
	ControlSend, , {d down}{d down}, Gypsy
	Sleep 500
}
Return

#s::
	stopLoop := !stopLoop
Return


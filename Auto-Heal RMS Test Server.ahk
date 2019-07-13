#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

SetKeyDelay -1, -1

$A::
	Send {Left}
	Sleep 1
	Send {Right}
	Sleep 1
Return

$7::
	Send {Enter}
	Sleep 1
	SendRaw @alive
	Sleep 1
	Send {Enter}
	Sleep 1
	SendRaw I am resurrected.
	Sleep 1
	Send {Enter}	
	Sleep 1
	Send {Enter}
	Sleep 1
	Send {Esc}
Return

$RShift::
	Suspend, Toggle
Return

$Enter::
	Suspend, Toggle
	Sleep 1
	Send {Enter}
	Sleep 1
Return
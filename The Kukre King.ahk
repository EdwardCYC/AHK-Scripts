#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetKeyDelay -1, -1
#MaxHotkeysPerInterval 1000

F9::
	WinWaitActive, Atlas Ragnarok Online
	WinSetTitle, Kukre King
Return

#MaxThreadsPerHotkey 2
$v::
IfWinActive, Kukre King
{
#MaxThreadsPerHotkey 1
If running = y
{
	running = n
	return
}
running = y
Loop
{
	If running = n
		return
	Send {v}
	Sleep 1200
} 
}
IfWinNotActive, Kukre King
	Send {v}
Return

$f::
IfWinActive, Kukre King
{
	Send {f}
	mouseClick, left
}
IfWinNotActive, Kukre King
	Send {f}
Return

$1::
IfWinActive, Kukre King
	Click down
IfWinNotActive, Kukre King
	Send {1}
Return

F1:: Reload

F2:: 
	Suspend, Toggle
Return

F3:: ExitApp
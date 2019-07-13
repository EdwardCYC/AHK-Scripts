#NoEnv
; #Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

SetKeyDelay -1
SetBatchLines -1
#MaxThreadsPerHotkey 3

1::

#MaxThreadsPerHotkey 1
If Running
{
	Running := false
	return
}
Running := true
Loop
{
	Send, {4}
	Sleep 1
	mouseClick, left
	Sleep 1
	If not Running
		break
}
Running := false
Return

F1:: ExitApp
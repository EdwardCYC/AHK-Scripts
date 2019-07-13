#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetKeyDelay -1, -1
#MaxThreadsPerHotkey 3

$f::
#MaxThreadsPerHotkey 1

if KeepWinZRunning
{
	KeepWinZRunning := false
	return
}

KeepWinZRunning := true
Loop
{
	Send {w}
	Sleep 150
	Send {q}
	Sleep 50
	Send {e}
	Sleep 150
	Send {q}
	Sleep 50
	Send {r}
	Sleep 150
	Send {q}
	Sleep 50
	if not KeepWinZRunning
	Send {q}
	Sleep 50
        break
}
KeepWinZRunning := false
return


F2:: Reload
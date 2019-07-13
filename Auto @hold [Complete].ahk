; Automatic @hold when spamming a targeting skill, to prevent misclicks.
; Script will turn off @hold when spammed key is releasd.
; Place @hold command on Alt + 1 using Alt + M.
; For this script, the key to spam is f.
; Pressing Enter will suspend/unsuspend the script. For chatting.
; Pressing Right Shift will also suspend/unsuspend the script.
; F1 suspends the script. F2 reloads it. F3 kills the script.

$f::
	Send, {Alt down}
	Sleep 1
	Send, {1}
	Sleep 1
	Send, {Alt up}
	Loop
	{
		if not GetKeyState("f", "P")
			break
		Send, {f}
		mouseClick, left
	}
Return

$f Up::
	mouseClick, left
	Send, {Alt down}
	Sleep 1
	Send, {1}
	Sleep 1
	Send, {Alt up}
Return

Enter::
	Suspend, Toggle
	Send, {Enter}
Return

$RShift::
	Suspend, Toggle
Return

F1::
	Suspend
Return

F2::
	Reload
Return

F3::
	ExitApp
Return
SetKeyDelay -1, -1

1::
	WinWaitActive, Ragnarok
	WinSetTitle, Sniper
Return

2::
	WinWaitActive, Ragnarok
	WinSetTitle, Professor
Return

3::	
	WinWaitActive, Ragnarok
	WinSetTitle, Paladin
Return

4::
	ControlSend, , {a}, Sniper
Return

F1::
Loop,
{
	Sleep 10000
	WinActivate, Professor
	Sleep 200
	mouseClick, left, 590, 320, 3
	Sleep 200
	WinActivate, Paladin
	Sleep 1
	mouseMove, 90, 190
}
Return

$f::
	Send, {f}
	mouseClick, left
Return

F3:: Reload
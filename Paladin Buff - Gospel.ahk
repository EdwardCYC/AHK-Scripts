SetKeyDelay, 1, 100

F1::
	WinWaitActive, Atlas Ragnarok Online
	WinSetTitle, Gospel
Return

F2::
Loop
{
	Loop, 15
	{
		ControlSend, , {f}, Gospel
		Sleep 61000
	}
	ControlSend, , {Enter}, Gospel
	Sleep 500
	ControlSend, , {Shift Down}{2}{Shift Up}go 1, Gospel
	Sleep 500
	ControlSend, , {Enter}, Gospel
	Sleep 500
	ControlSend, , {Enter}, Gospel
	Sleep 1000
	ControlSend, , {Enter}, Gospel
	Sleep 500
	ControlSend, , {Shift Down}{2}{Shift Up}go 28, Gospel
	Sleep 500
	ControlSend, , {Enter}, Gospel
	Sleep 500
	ControlSend, , {Enter}, Gospel
}
Return

F3::
	ControlSend, , {Enter}, Gospel
	Sleep 500
	ControlSend, , {Shift Down}{2}{Shift Up}go 1, Gospel
	Sleep 500
	ControlSend, , {Enter}, Gospel
	Sleep 500
	ControlSend, , {Enter}, Gospel
	Sleep 1000
	ControlSend, , {Enter}, Gospel
	Sleep 500
	ControlSend, , {Shift Down}{2}{Shift Up}go 28, Gospel
	Sleep 500
	ControlSend, , {Enter}, Gospel
	Sleep 500
	ControlSend, , {Enter}, Gospel
Return

F4::
	Sleep 1000
	ControlSend, , {Alt Down}{6}{Alt Up}, Gospel
	Sleep 1000
Return

F5:: Reload

F6:: ExitApp

F7:: 
Loop
{
	ControlSend, , {f}, Gospel
	Sleep 61000
}
Return
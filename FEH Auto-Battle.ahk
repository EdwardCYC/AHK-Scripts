; Active window command

F1::
	mouseClick, left, 40, 680
	Sleep 300
	Loop, 2
	{
	mouseClick, left, 190, 365
	Sleep 500
	}
Return

; Inactive window command

F2::
	ControlClick, x40 y680, Nox App Player, , , , Pos
	Sleep 300
	Loop, 2
	{
	ControlClick, x190 y365, Nox App Player, , , , Pos
	Sleep 750
	}
	Loop, 30
	{
	ControlClick, x190 y432, Nox App Player, , , , Pos
	Sleep 2000
	}
Return

F3:: Pause

F4:: ExitApp
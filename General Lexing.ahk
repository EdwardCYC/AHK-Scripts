; Instructions:
; 1. Place Lex Aeterna skill on F1.
; 2. Make sure F2, F3 and F4 keys are not being used for skills.
; 3. Press F2 to start the script.
; 4. Press F3 to pause/unpause the script.
; 5. Press F4 to stop the script totally. Will need to reload to reuse.
; 6. To AFK Lex, place your cursor on the spot you want to Lex. Done.

F2::
Loop
{
	Send, {F1}
	MouseClick, left
	Sleep 100
}
Return

F3::
	Pause
Return

F4::
	ExitApp
Return
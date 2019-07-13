; Instructions:
; 1. Change screen resolution to 1280 x 600.
; 2. Stand exactly on the square my HW is standing in screenshot.
; 3. Adjust zoom level to exactly the same as my HW in screenshot.
; 4. Press F1 to start. 
; 5. Press F2 to stop. You will need to reload the script to restart.

; My Ice Wall key is e. If you want to use a different key,
; you need to change all the Send statements to send to your key.

; Coordinates used:
; Line 1 - 640 65
; Line 2 - 640 90
; Line 3 - 640 115
; Line 4 - 640 145
; Line 5 - Empty
; Line 6 - 640 190
; Line 7 - 640 220

; My Ice Wall pattern: 3-4-6-2-1-7

F1::
Loop
{
	Send, {e}
	MouseClick, left, 640, 115
	Sleep 5000
	Send, {e}
	MouseClick, left, 640, 145
	Sleep 5000
	Send, {e}
	MouseClick, left, 640, 190
	Sleep 5000
	Send, {e}
	MouseClick, left, 640, 90
	Sleep 5000
	Send, {e}
	MouseClick, left, 640, 65
	Sleep 5000
	Send, {e}
	MouseClick, left, 640, 220
	Sleep 20000
}
Return

F2::
	ExitApp
Return


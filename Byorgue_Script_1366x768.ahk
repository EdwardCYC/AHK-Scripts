; Instructions:
; 1. Change screen resolution to 1366 x 768.
; 2. Stand exactly on the square my HW is standing in screenshot.
; 3. Adjust zoom level to exactly the same as my HW in screenshot.
; 4. Press F1 to start. 
; 5. Press F2 to stop. You will need to reload the script to restart.

; This Ice Wall key is 2. If you want to use a different key,
; you need to change all the Send statements to send to your key.

; Coordinates used:
; Line 1 - 680 175
; Line 2 - 680 200
; Line 3 - 680 220
; Line 4 - 680 240
; Line 5 - Empty
; Line 6 - 680 290
; Line 7 - 680 310

; My Ice Wall pattern: 3-4-6-2-1-7

F1::
Loop
{
	Send, {2}
	MouseClick, left, 680, 220
	Sleep 5000
	Send, {2}
	MouseClick, left, 680, 240
	Sleep 5000
	Send, {2}
	MouseClick, left, 680, 290
	Sleep 5000
	Send, {2}
	MouseClick, left, 680, 200
	Sleep 5000
	Send, {2}
	MouseClick, left, 680, 175
	Sleep 5000
	Send, {2}
	MouseClick, left, 680, 310
	Sleep 20000
}
Return

F2::
	ExitApp
Return


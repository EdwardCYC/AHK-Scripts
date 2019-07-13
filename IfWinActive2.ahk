#IfWinActive ahk_class Notepad
#space::
	MsgBox, You pressed Win+Spacebar in Notepad.
Return
:*:msg::You typed msg in Notepad.
:*:ftw::Free the whales.
#IfWinActive

#IfWinActive Untitled - Paint
#space::
	MsgBox, You pressed Win+Spacebar in Paint!
Return
::msg::You typed msg in MSPaint{!}
#IfWinActive

#IfWinActive FA Sniper - Notepad
	WinWaitActive, FA Sniper - Notepad
	sendinput, This is your FA Sniper AHK script.
Return
#IfWinActive
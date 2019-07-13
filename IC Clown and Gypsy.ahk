#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

;;;;;;;;;;

; Edit the following hotkeys and intervals to your liking:

; Hotkey to set window title to Clown or back to original
SetTitleClown = F10

; Hotkey to set window title to Gypsy or back to original
SetTitleGypsy = F11

; Hotkey to turn off whatever songs is being played
; Recommended to set to your instrument key
TurnOffSongs = Q

; Hotkeys for switching instruments
ClownInstrument = Q
GypsyInstrument = Q

; Hotkey to play Bragi/Service only
BragiService = ^1
Restart = ^2

; Hotkey to play Bragi/Service/Sinx
SunsetFortune = ^3

; Hotkey to play Bragi/Service/Sinx/Fortune/Drum
AllSongs = ^4

; Bragi Hotkey (Clown)
Bragi = W

; Assassin Cross of Sunset Hotkey (Clown)
Sinx = E

; Apple of Idun Hotkey (Clown)
Idun = R

; Service Hotkey (Gypsy)
Service = W

; Fortune's Kiss Hotkey (Gypsy)
Fortune = E

; A Drum on the Battlefield Hotkey (Clown)
Drum = T

; Sleep interval for non-ensembles when flashing songs
; Also the interval to pause for after turning off songs
SleepDurationFlash = 500

; Sleep interval for playing Bragi/Service until it ; runs out
; default is 170000
PlayBragiUntilFinish = 170000

; Sleep interval for waiting at the end
Wait_Duration = 14000

; Sleep interval for flashing A Drum on the Battlefield
Drum_Duration = 10000

;;;;;;;;;;



SetKeyDelay -1, -1
BreakLoop = 0

Hotkey, %SetTitleClown%, SetTitleClown_Label
Hotkey, %SetTitleGypsy%, SetTitleGypsy_Label
Hotkey, %TurnOffSongs%, TurnOffSongs_Label
Hotkey, %BragiService%, BragiService_Label
Hotkey, %Restart%, Restart_Label
Hotkey, %SunsetFortune%, SunsetFortune_Label
Hotkey, %AllSongs%, AllSongs_Label
Return

SetTitleClown_Label:
	WinGetTitle, Title, A
	If (Title != "Clown") {
		WinSetTitle, %Title%, , Clown
	} else {
		WinSetTitle, %Title%, , %originalTitle%
	}
	originalTitle := Title
Return

SetTitleGypsy_Label:
	WinGetTitle, Title, A
	If (Title != "Gypsy") {
		WinSetTitle, %Title%, , Gypsy
	} else {
		WinSetTitle, %Title%, , %originalTitle%
	}
	originalTitle := Title
Return

TurnOffSongs_Label:
	ControlSend, , %ClownInstrument%, Clown
	ControlSend, , %GypsyInstrument%, Gypsy
Return

BragiService_Label:
BreakLoop = 0
Loop
{
	If BreakLoop = 1
		break
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	ControlSend, , %Bragi%, Clown
	ControlSend, , %Service%, Gypsy
	Sleep %PlayBragiUntilFinish%
}
Return

Restart_Label:
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	ControlSend, , %Bragi%, Clown
	ControlSend, , %Service%, Gypsy
Return

SunsetFortune_Label:
BreakLoop = 0
Sleep 500
ControlSend, , {v}, Clown
Sleep 500
Loop
{
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	If BreakLoop = 1
		break
	ControlSend, , %Sinx%, Clown
	ControlSend, , %Fortune%, Gypsy
	Sleep %SleepDurationFlash%
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	If BreakLoop = 1
		break
	ControlSend, , %Bragi%, Clown
	ControlSend, , %Service%, Gypsy
	Sleep %Wait_Duration%
}
Return

AllSongs_Label:
BreakLoop = 0
Sleep 500
ControlSend, , {v}, Clown
Sleep 500
Loop
{
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	If BreakLoop = 1
		break
	ControlSend, , %Sinx%, Clown
	ControlSend, , %Fortune%, Gypsy
	Sleep %SleepDurationFlash%
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	If BreakLoop = 1
		break
	ControlSend, , %Bragi%, Clown
	ControlSend, , %Service%, Gypsy
	Sleep %SleepDurationFlash%
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	If BreakLoop = 1
		break
	ControlSend, , %Drum%, Clown
	Sleep %Drum_Duration%
}
Return

$F1::
	Suspend, Toggle
	BreakLoop = 1
Return

$F2::
	Reload
Return
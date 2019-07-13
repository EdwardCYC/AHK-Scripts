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
SetTitleClown = 1

; Hotkey to set window title to Gypsy or back to original
SetTitleGypsy = 2

; Hotkey to turn off whatever songs is being played
; Recommended to set to your instrument key
TurnOffSongs = D

; Hotkey to play Bragi/Service only
BragiServiceOnly = F1

; Hotkey to play A Drum on the Battlefield only
DrumOnly = F2

; Hotkey to flash all songs except Drum
NoDrumFlash = F3

; Hotkey to flash all five songs and end with Drum, looped
AllSongsFlash = F9

; Sleep interval for non-ensembles when flashing songs
; Also the interval to pause for after turning off songs
SleepDurationFlash = 1000

; Sleep interval for playing Bragi/Service until it runs ; out
PlayBragiUntilFinish = 170000

; Sleep interval for playing Drum until it runs out
PlayDrumUntilFinish = 56000

; Hotkeys for switching instruments
ClownInstrument = D
GypsyInstrument = D

; Bragi Hotkey (Clown)
Bragi = F

; Service Hotkey (Gypsy)
Service = F

; Assassin Cross of Sunset Hotkey (Clown)
Sinx = G

; Fortune's Kiss Hotkey (Gypsy)
Fortune = G

; Apple of Idun Hotkey (Clown)
Idun = H

; A Drum on the Battlefield Hotkey (Clown)
Drum = J

; Sleep interval for A Drum on the Battlefield
Drum_Duration = 10000

;;;;;;;;;;



SetKeyDelay -1, -1
BreakLoop = 0

Hotkey, %SetTitleClown%, SetTitleClown_Label
Hotkey, %SetTitleGypsy%, SetTitleGypsy_Label
Hotkey, %TurnOffSongs%, TurnOffSongs_Label
Hotkey, %BragiServiceOnly%, BragiServiceOnly_Label
Hotkey, %DrumOnly%, DrumOnly_Label
Hotkey, %AllSongsFlash%, AllSongsFlash_Label
Hotkey, %NoDrumFlash%, NoDrumFlash_Label
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

BragiServiceOnly_Label:
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

DrumOnly_Label:
BreakLoop = 0
Loop
{
	If BreakLoop = 1
		break
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	ControlSend, , %Drum%, Clown
	Sleep %PlayDrumUntilFinish%
}
Return

AllSongsFlash_Label:
BreakLoop = 0
Loop
{
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
	ControlSend, , %Sinx%, Clown
	ControlSend, , %Fortune%, Gypsy
	Sleep %SleepDurationFlash%
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	If BreakLoop = 1
		break
	ControlSend, , %Idun%, Clown
	Sleep %SleepDurationFlash%
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	If BreakLoop = 1
		break
	ControlSend, , %Drum%, Clown
	Sleep %Drum_Duration%
}
Return

NoDrumFlash_Label:
BreakLoop = 0
Loop
{
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
	ControlSend, , %Sinx%, Clown
	ControlSend, , %Fortune%, Gypsy
	Sleep %SleepDurationFlash%
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	If BreakLoop = 1
		break
	ControlSend, , %Idun%, Clown
	Sleep %SleepDurationFlash%
}
Return

$RShift::
	Suspend, Toggle
	BreakLoop = 1
Return
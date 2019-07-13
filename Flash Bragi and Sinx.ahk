#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

if(!A_IsAdmin) {
    Run, *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
    ExitApp
}

;;;;;;;;;;

; Hotkey to set window title to Clown or back to original
SetTitleClown = F9

; Hotkey to turn off whatever songs is being played
; Recommended to set to your instrument key
TurnOffSongs = D

; Hotkey to play Bragi only
BragiOnly = 4

; Hotkey to flash Bragi and Sinx
BragiSinxFlash = 5

; Sleep interval for non-ensembles when flashing songs
; Also the interval to pause for after turning off songs
SleepDurationFlash = 500

; Sleep interval for playing Bragi/Service until it runs ; out
PlayBragiUntilFinish = 170000

; Hotkeys for switching instruments
ClownInstrument = D

; Bragi Hotkey (Clown)
Bragi = F

; Assassin Cross of Sunset Hotkey (Clown)
Sinx = G

;;;;;;;;;;

SetKeyDelay -1, -1

Hotkey, %SetTitleClown%, SetTitleClown_Label
Hotkey, %TurnOffSongs%, TurnOffSongs_Label
Hotkey, %BragiOnly%, BragiOnly_Label
Hotkey, %BragiSinxFlash%, BragiSinxFlash_Label
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

TurnOffSongs_Label:
	ControlSend, , %ClownInstrument%, Clown
Return

BragiOnly_Label:
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	ControlSend, , %Bragi%, Clown
	Sleep %SleepDurationFlash%
Return

BragiSinxFlash_Label:
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	ControlSend, , %Bragi%, Clown
	Sleep %SleepDurationFlash%
	Gosub, TurnOffSongs_Label
	Sleep %SleepDurationFlash%
	ControlSend, , %Sinx%, Clown
	Sleep %SleepDurationFlash%
	Gosub, TurnOffSongs_Label
Return

$F1::
	Suspend, Toggle
Return
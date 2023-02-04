; -------------------------------------------------------------------------------- ;
;  Core Keeper Auto Fish AutoHotKey script
;  Version: 0.0.6
;  Last Updated: 2023/02/01
;  Author: Tim Martin
;  Editor: lbcai, kildaremc
; -------------------------------------------------------------------------------- ;
#Include VA.ahk


audioMeter := VA_GetAudioMeter()
toggle := 0
toggleAtk := 0
delay := 18400
time := A_TickCount
catchFish := 0

MsgBox, 0, % "Core Keeper Auto Fish", % "Welcome to Core Keeper Auto Fish`n`nThis program automatically fishes for you in the game Core Keeper so that you can grind fishing levels while away from your computer.`n`nTo use this program stand with a water block next to you, on your RIGHT. It is recommended to block yourself in with walls to avoid moving off the tile or being attacked by mobs.`n`nEnsure you are holding a fishing rod, then press Ctrl + Shift + f. You can press Ctrl + Shift + f to stop automatically fishing at any time. There is also a melee/ranged attack leveling mode that can be used by pressing Ctrl + Shift + h."

Loop {
    stage := 0
    While (toggle and !toggleAtk) {

        If WinExist("Core Keeper") {
            If WinActive("Core Keeper") {
                WinGetPos, WinX, WinY, WinW, WinH
                Rx1 := (WinW / 2) - (0.1883 * WinH)
                Ry1 := 0.7713 * WinH
                Rx2 := (WinW / 2) + (0.186 * WinH)
                Ry2 := 0.803 * WinH
                Mx := WinW * 0.8
                My := WinH / 2

				if (stage == 0) {
					OutputDebug, % "0"
					MouseClick, left, Mx, My,,0,D
					Sleep 100
					MouseClick, left, Mx, My,,0,U
					Sleep 100
					stage := 1
					time := A_TickCount
				}

				if (stage == 1 and A_TickCount > time + 100) {
					OutputDebug, % "1"
					MouseClick, right, Mx, My,,0,D
					stage := 2
					time := A_TickCount
				}

				if (stage == 2 and A_TickCount > time + 200) {
					OutputDebug, % "2"
					MouseClick, right, Mx, My,,0,U
					stage := 3
					time := A_TickCount
				}

				if (stage == 3 and A_TickCount > time + 1000) {
					OutputDebug, % "3"
					if (stage == 3 and A_TickCount < time + delay) {
						OutputDebug, % "listening"
						VA_IAudioMeterInformation_GetPeakValue(audioMeter, peakValue)
						if peakValue > 0.091
							{
								MouseClick, right, Mx, My,,0,D
								Sleep 100
								MouseClick, right, Mx, My,,0,U
								Sleep 200
								stage := 5
								time := A_TickCount
							}
						}
						if (stage == 3 and A_TickCount > time + delay) {
							OutputDebug, % "timed out"
							MouseClick, right, Mx, My,,0,D
							stage := 4
							time := A_TickCount
						}
				}


				if (stage == 4 and A_TickCount > time + 100) {
					OutputDebug, % "timed out 1"
					MouseClick, right, Mx, My,,0,U
					stage := 7
					time := A_TickCount
				}

				if (stage == 5) {
					OutputDebug, % "5"
					if (A_TickCount < time + 800) {
						OutputDebug, % "listening"
						VA_IAudioMeterInformation_GetPeakValue(audioMeter, peakValue)
						if (catchFish) {
							MouseClick, right, Mx, My,,0,D
						}
					if peakValue > 0.091
						{
							stage := 6
						}
					}

					if (A_TickCount > time + 800) {
						OutputDebug, % "timed out 2"
						if (catchFish) {
							MouseClick, right, Mx, My,,0,U
						}
						stage := 7
						time := A_TickCount
					}
				}

				if (stage == 6) {
					OutputDebug, % "6"
					if (!catchFish) {
						OutputDebug, % "cancel"
						send {right down}
						Sleep 100
						send {right up}
						Sleep 100
						stage := 7
						time := A_TickCount
						}
					if (catchFish) {
						OutputDebug, % "fishing"
						VA_IAudioMeterInformation_GetPeakValue(audioMeter, peakValue)
						if (A_TickCount < time + 1500) {
							if peakValue > 0.16
								{
									MouseClick, right, Mx, My,,0,U
									time := A_TickCount
								}
							if peakValue < 0.11
								{
									MouseClick, right, Mx, My,,0,D
								}
						}

						if (A_TickCount > time + 1500)
							{
								OutputDebug, % "no sound for a while - fishing over"
								MouseClick, right, Mx, My,,0,U
								stage := 7
								time := A_TickCount
							}
					}
				}

				if (stage == 7 and A_TickCount > time + 200) {
					OutputDebug, % "7"
					stage := 0
				}

				continue

            } else {
                MsgBox, 4, % "Core Keeper Auto Fish - Core Keeper not active", % "You cannot fish if Core Keeper is not the active window.`n`nWould you like to make Core Keeper the active window?"
                IfMsgBox, Yes
                    WinActivate
                else IfMsgBox, No
                    toggle := 0
                continue
            }
        } else {
            MsgBox, 0, % "Core Keeper Auto Fish - Core Keeper not running", % "Core Keeper is not running.`n`nPlease run Core Keeper before attempting to fish."
            toggle := 0
            continue
        }
    }

	While (toggleAtk and !toggle) {
		If WinExist("Core Keeper") {
            If WinActive("Core Keeper") {

				MouseClick, left,,,,0,D
				Sleep 100
				MouseClick, left,,,,0,U
				Sleep 100
				continue

            } else {
                MsgBox, 4, % "Core Keeper Auto Attack - Core Keeper not active", % "You cannot use the script if Core Keeper is not the active window.`n`nWould you like to make Core Keeper the active window?"
                IfMsgBox, Yes
                    WinActivate
                else IfMsgBox, No
                    toggle := 0
                continue
            }
        } else {
            MsgBox, 0, % "Core Keeper Auto Attack - Core Keeper not running", % "Core Keeper is not running.`n`nPlease run Core Keeper before attempting to use script."
            toggle := 0
            continue
        }
	}
}
return

$^+f::
toggle := !toggle
toggleAtk := 0
return

;$^+g:: catchFish := !catchFish

$^+h::
toggleAtk := !toggleAtk
toggle := 0
return

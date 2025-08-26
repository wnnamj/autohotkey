#Requires AutoHotkey 2.0+
#SingleInstance Force

#Include E:\projects\github\autohotkey\lib\ahk-tools\tap-hold-manager\Lib\TapHoldManager.ahk
; https://github.com/evilC/TapHoldManager

CoordMode("Mouse")

thm := TapHoldManager()

thm.Add("f3", dispSwitch)

dispSwitch(isHold, taps, state)
{
	; primary display
	if (taps = 2)
		{
			MouseMove(A_ScreenWidth/2,A_ScreenHeight/2,0)
		}

	; secondary display
	if (taps = 1)
		{
			MonitorGet(2,&L,&T,&R,&B),MouseMove((L+R)/2.67,(T+B)/1.39,0)
		}
}
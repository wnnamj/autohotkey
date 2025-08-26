#SingleInstance

^y::newVVV("^+!{Y}","","▣ void-") ; new void
+^y::newVVV("^+!{W}","","▣ void-") ; new invisible void
!y::newVVV("^+!{I}","","◉ variant-") ; new variant
#y::newVVV("^+!{U}","{Enter}","◈ volume-") ; new volume


;====================> text <====================;

:*xo:-v1::Send "▣ void-" ; void
:*xo:-v2::Send "◉ variant-" ; variant
:*xo:-v3::Send "◈ volume-" ; volume


;====================> function <====================;

SleepDur := 100

newVVV(shortcut,colPick,nullType)
{
	Send (shortcut)
	Sleep SleepDur
	Send (colPick)
	Sleep SleepDur
	Send ("{SC02B}")
	Send ("4")
	Send ("^{Down}")
	Send ("{Enter}")
	Send ("^{X}")
	Send ("{ESC}")
	Send ("^{Up}")
	Send ("{Enter}")
	Send (nullType)
}
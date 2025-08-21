#SingleInstance

; new void
f5::
^y::newVVV("^+!{Y}","","▣ void-")

; new invisible void
+f5::
+^y::newVVV("^+!{W}","","▣ void-")

; new variant
f6::
!y::newVVV("^+!{I}","","◉ variant-")

; new volume
f7::
#y::newVVV("^+{U}","{Enter}","◈ volume-")


;==================== function ====================

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
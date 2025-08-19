#Requires AutoHotkey 2.0+
#SingleInstance Force

; replace
^f2::replaceComp("^+{P}")

; set work area
+f2::setWorkarea("^{Up}")

; replace and set
#f2::{
	replaceComp("")
	Sleep 100
	setWorkarea("^{Down}")
}


;==================== functions ====================

replaceComp(projPanel)
{
	SendInput ("^+{P}")
	SendInput ("{Down}")
	SendInput ("{\}")
	Sleep 100
	SendInput ("^{Up}")
	SendInput ("^!{/}")
	SendInput (projPanel)
}

setWorkarea(nextComp)
{
	SendInput ("{I}")
	SendInput ("^{Enter}")
	SendInput ("{B}")
	SendInput ("^{W}")
	SendInput ("{O}")
	SendInput ("^{Enter}")
	SendInput ("{N}")
	SendInput ("^{W}")
	SendInput (nextComp)
}
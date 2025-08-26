#Requires AutoHotkey 2.0+
#SingleInstance Force

; replace
+f2::replaceComp("{k}")

; set work area
f2::setWorkarea("{k}")

; replace and set
#f2::{
	replaceComp("k")
	Sleep 100
	setWorkarea("{j}")
}


;====================> functions <====================;

replaceComp(projPanel)
{
	SendInput ("^+{p}")
	SendInput ("{j}")
	SendInput ("{\}")
	Sleep 100
	SendInput ("{k}")
	SendInput ("^!{/}")
	SendInput (projPanel)
}

setWorkarea(nextComp)
{
	SendInput ("{i}")
	SendInput ("{NumpadEnter}")
	SendInput ("{b}")
	SendInput ("^{w}")
	SendInput ("{o}")
	SendInput ("{NumpadEnter}")
	SendInput ("{n}")
	SendInput ("^{w}")
	SendInput (nextComp)
}
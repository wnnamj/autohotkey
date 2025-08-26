#Requires AutoHotkey 2.0+
#SingleInstance Force

+f2::replaceComp("{k}") ; replace comp
f2::setWorkarea("{k}") ; set work area

; replace comp and set work area
#f2::
{
	replaceComp("k")
	Sleep 100
	setWorkArea("{j}")
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

setWorkArea(nextComp)
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
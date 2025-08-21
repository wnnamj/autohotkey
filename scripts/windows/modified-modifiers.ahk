#SingleInstance
#Requires AutoHotkey v2.0+

Persistent

;====================> modifier key remaps <====================;

#HotIfTimeout 10

LWin::LCtrl
RWin::RCtrl
RCtrl::RWin
LCtrl::LWin
SetCapsLockState("AlwaysOff")
SetNumLockState("AlwaysOn")

#HotIf


;====================> media and nav <====================;

f13:: XButton2 ; forward
f16:: XButton1 ; back
f24:: Media_Play_Pause ; play/pause


;====================> text navigation <====================;

; roc = Right of cursor
; loc = Left of cursor

; jump words
!Right::Send ("^{Right}")
!Left::Send ("^{Left}")

; highlight words
+!Right::Send ("+^{Right}")
+!Left::Send ("+^{Left}")

; jump to start/end of line
^Right::Send ("{End}")
^Left::Send ("{Home}")

; highlight line
+^Right::Send ("+{End}")
+^Left::Send ("+{Home}")

; jump to top/bottom
^Up::Send ("{PgUp}")
^Down::Send ("{PgDn}")

; highlight top/bottom
+^Up::Send ("+{PgUp}")
+^Down::Send ("+{PgDn}")


;====================> deletion <====================;

; roc character Delete
#Backspace::Send ("{Del}")

; roc word Delete
+!Backspace::Send ("^{Del}")

; loc word Delete
!Backspace::{
	Send ("+^{Left}")
	Send ("{Del}")
	Return
}

; everything loc Delete
^Backspace::{
	Send ("+{Home}")
	Send ("{Del}")
	Return
}

; everything roc Delete
+^Backspace::Send ("+^{Del}")


;====================> other keys <====================;

#HotIf WinActive("ahk_exe AfterFX.exe")

CapsLock:: {
		SetCapsLockState("on")
}

^CapsLock:: {
		SetCapsLockState("off")
}

#HotIf
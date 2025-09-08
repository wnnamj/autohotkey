#Requires AutoHotkey 2.0+
#SingleInstance Force

#HotIf WinActive("ahk_exe AfterFX.exe")

f18::Send ("{backspace}") ; clear
f19::Send ("!{=}") ; fit comp 100%

;====================> navigation <====================;

; navigate forward
f24::Send ("{.}") ; 1 frame
+f24::Send ("+{.}") ; 10 frames
^f24::Send ("^{.}") ; shift layer 1 frame
+^f24::Send ("+^{.}") ; shift layer 10 frames
!f24::Send ("!{.}") ; shift keyframes 1 frame
+!f24::Send ("+!{.}") ; shift keyframes 10 frames

; navigate back
f15::Send ("{,}") ; 1 frame
+f15::Send ("+{,}") ; 10 frames
^f15::Send ("^{,}") ; shift layer 1 frame
+^f15::Send ("+^{,}") ; shift layer 10 frames
!f15::Send ("!{,}") ; shift keyframes 1 frame
+!f15::Send ("+!{,}") ; shift keyframes 10 frames

; align to cti
f13::Send ("{[}") ; align in
!f13::Send ("!{[}") ; trim in
f16::Send ("{]}") ; align out
!f16::Send ("!{]}") ; trim out


;====================> scrolling <====================;

!WheelUp::Send ("!{wheelUp 15}")
!WheelDown::Send ("!{wheelDown 15}")
+WheelUp::Send ("+{wheelUp 15}")
+WheelDown::Send ("+{wheelDown 15}")


/* ; scrub with mouse wheel
#WheelUp::Send ("{.}")
#WheelDown::Send ("{,}") */

#HotIf


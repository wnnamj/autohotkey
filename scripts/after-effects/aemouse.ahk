#Requires AutoHotkey 2.0+
#SingleInstance Force

#HotIf WinActive("ahk_exe AfterFX.exe")

f13::Send ("{backspace}") ; clear

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
f16::Send ("{[}") ; align in
!f16::Send ("!{[}") ; trim in
f19::Send ("{]}") ; align out
!f19::Send ("!{]}") ; trim out

#HotIf


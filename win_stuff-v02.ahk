#Requires AutoHotkey 2.0+
#SingleInstance Force


;====================> binbows stuff <====================;

#Include E:\projects\github\autohotkey\scripts\windows\corrections-replacements.ahk
#Include E:\projects\github\autohotkey\scripts\windows\modified-modifiers.ahk
#Include E:\projects\github\autohotkey\scripts\windows\cursor-to-opposite-display.ahk
#Include E:\projects\github\autohotkey\scripts\windows\misc-things.ahk
#Include E:\projects\github\autohotkey\scripts\windows\jmdesign.ahk
#Include E:\projects\github\autohotkey\scripts\windows\win-man-nav.ahk
;#Include E:\projects\github\autohotkey\scripts\windows\captcha-clicker.ahk


;====================> after effects <====================;

#HotIf WinActive("ahk_exe AfterFX.exe")

#Include E:\projects\github\autohotkey\scripts\after-effects\change-appearance.ahk
#Include E:\projects\github\autohotkey\scripts\after-effects\vvv.ahk
#Include E:\projects\github\autohotkey\scripts\after-effects\comp-replacement.ahk
#Include E:\projects\github\autohotkey\scripts\after-effects\expressions.ahk
#Include E:\projects\github\autohotkey\scripts\after-effects\faster-scrolling-ae.ahk
Return

#HotIf


;====================> premiere pro <====================;

;~ #HotIf WinActive("ahk_exe Adobe Premiere Pro.exe")
;~ #Include E:\projects\github\autohotkey\scripts\premiere-pro\faster-scrolling.ahk
;~ #HotIf


;====================> illustrator <====================;

;~ #HotIf WinActive("ahk_exe Illustrator.exe")
;~ #HotIf


;====================> scripty things <====================;

#HotIf WinActive("ahk_exe SciTE.exe")

^+r::Reload
+^w::Run "C:\Program Files\AutoHotkey\WindowSpy.ahk"

#HotIf



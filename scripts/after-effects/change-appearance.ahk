#Requires AutoHotkey 2.0+
#SingleInstance Force


^f12::changeAppearance("{TAB 5}","{TAB 4}") ; darkest
!f12::changeAppearance("{TAB 6}","{TAB 3}") ; dark
+^f12::changeAppearance("{TAB 7}","{TAB 2}") ; light


;====================> function <====================;

changeAppearance(toTheme,outTheme)
{
	SendInput ("^!{SC027}")
	SendInput ("+{TAB}")
	SendInput ("A")
	SendInput (toTheme)
	SendInput ("^{Enter}")
	SendInput (outTheme)
	SendInput ("^{Enter}")
}
#SingleInstance
#Requires AutoHotkey v2.0

!WheelUp::Send ("!{wheelUp 15}")
!WheelDown::Send ("!{wheelDown 15}")
+WheelUp::Send ("+{wheelUp 15}")
+WheelDown::Send ("+{wheelDown 15}")
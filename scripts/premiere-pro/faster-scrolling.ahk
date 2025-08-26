#SingleInstance
#Requires AutoHotkey v2.0

!WheelUp::Send ("!{wheelUp 5}")
!WheelDown::Send ("!{wheelDown 5}")
+WheelUp::Send ("+{wheelUp 5}")
+WheelDown::Send ("+{wheelDown 5}")
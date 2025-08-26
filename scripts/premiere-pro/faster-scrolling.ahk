#Requires AutoHotkey 2.0+
#SingleInstance Force


!WheelUp::Send ("!{wheelUp 5}")
!WheelDown::Send ("!{wheelDown 5}")
+WheelUp::Send ("+{wheelUp 5}")
+WheelDown::Send ("+{wheelDown 5}")
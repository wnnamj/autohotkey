#Requires AutoHotkey 2.0+
#SingleInstance Force

#s::
{
    MouseGetPos &xPos, &yPos 
    MouseClick "left", xPos , yPos
    SendInput ("^+{]}")
}
#Requires AutoHotkey 2.0+
#SingleInstance Force


:*xc:-atf::expression("auto-fade") ; auto fade
:*xc:-chk::expression("checkbox-sel") ; checkbox selector
:*xc:-stk::expression("constant-stroke-width") ; constant stroke width
:*xc:-inv::expression("invert-opacity") ; invert opposite layer opacity
:*xc:-dly::expression("key-delay") ; delay keyframes
:*xc:-lpp::expression("loop-keys") ; loop path keyframes
:*xc:-lpw::expression("loop-wiggle") ; loop wiggle
:*xc:-wgl::expression("wiggle") ; normal wiggle with controls
:*xc:-osb::expression("overshoot-bounce") ; overshoot bounce
:*xc:-osc::expression("overshoot-calc") ; overshoot calculation
:*xc:-osk::expression("overshoot-keys") ; overshoot keys


;==================== function ====================

expression(expressionPath) {
	sendExpression := FileRead("E:\projects\github\after-effects\expressions\" expressionPath ".txt")
	Send sendExpression
	Return
}


;==================== other ====================

; insert a comment
^/:: {
	Send "// "
	Return
}
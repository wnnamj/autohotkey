#Requires AutoHotkey 2.0+
#SingleInstance Force


; post render file rename
:*x:-h1::postRender("h265","1080")
:*x:-h2::postRender("h265","2160")
:*xc:-p1::postRender("prores422","1080")
:*xc:-p2::postRender("prores422","2160")

; project link divider
:*oc:-P:: {
	Send "- " ("^{z}") "- - -" "`n" A_Clipboard
}

; invoice file name
:*x:-inv:: {
	TimeStampDate := FormatTime(,"yyMMdd")
	Send "jmd-inv_0000" "-" TimeStampDate "-" "cli"
}


;====================> function <====================;

; post render rename
postRender(codec,resolution) {
	TimeStampDate := FormatTime(,"yyMMdd")
	TimeStampTime := FormatTime(,"hhmm")
	Send "-" codec "-" TimeStampDate "_" TimeStampTime "-" resolution "p"

}
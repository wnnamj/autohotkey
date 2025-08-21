#Requires Autohotkey v2
#SingleInstance force

; post render file rename
:*x:-h1::postRender("h265","1080")
:*x:-h2::postRender("h265","2160")
:*x:-p1::postRender("prores422","1080")
:*x:-p2::postRender("prores422","2160")

; project link divider
:*oc:-p::
{
	Send "- " ("^{z}") "- - -" "`n" A_Clipboard
}


;====================> function <====================;

; post render rename
postRender(codec,resolution)
{
	TimeStampDate := FormatTime(,"yyyyMMdd")
	TimeStampTime := FormatTime(,"hhmm")
	Send "-" codec "-" TimeStampDate "_" TimeStampTime "-" resolution "p"

}
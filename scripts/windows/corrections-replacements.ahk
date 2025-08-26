#SingleInstance Force

;====================> thing stuffs <====================;

:*xo:@1::thingStuff("0c570208-7873-45b2-b329-bc8481188f5b")
:*xo:@2::thingStuff("0e55f39a-af27-4dec-8c0c-d342b8008a71")
:*xo:@3::thingStuff("cf4612b8-8805-4853-b8af-b5f9a0166424")
:*xo:@4::thingStuff("fdc8b4d5-8465-444c-814d-7724de55750c")
:*xo:#1::thingStuff("3aa3f846-0d95-4ab9-bf36-4393742c0f76")


;====================> text corrections <====================;

; for
:o:rfo::for `
:o:orf::for `
:o:ofr::for `
:o:rof::for `
:o:fro::for `

; the
:o:eth::the `
:o:het::the `
:o:hte::the `
:o:eht::the `
:o:teh::the `


;====================> current date <====================;

:*xc:-cd::dateTime("yyMMdd") ; current date 01
:*xc:-Cd::dateTime("yyyyMMdd") ; current date 02
:*xc:-CD::dateTime("yyyy-MM-dd") ; current date 03
:*xc:-ct::dateTime("hh:mm") ; current time 01
:*xc:-Ct::dateTime("hhmm") ; current time 02


;====================> functions <====================;

; text inputs
thingStuff(thingThing)
{
	thingPath := FileRead("C:\Program Files\ab049a6b-f552-43f9-9c9e-4ffc44c3d9a6\" thingThing)
	Send thingPath
	Return
}

; date and time
dateTime(dateTime)
{
	TimeStampDateTime := FormatTime(,dateTime)
	Send TimeStampDateTime
	Return
}
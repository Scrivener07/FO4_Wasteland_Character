Scriptname Fallout:Wasteland:Modification extends Papyrus:Project:Context
import Papyrus:Compatibility:External
import Papyrus:Diagnostics:Log
import Papyrus:VersionType


UserLog Log


; Events
;---------------------------------------------

Event OnInitialize()
	Log = Log(Title, self)
	Required = MQ102
	RequiredStage = 1
EndEvent


; Context
;---------------------------------------------

string Function GetTitle()
	return "Wasteland"
EndFunction


string[] Function GetAuthors()
	string[] values = new string[1]
	values[0] = "Scrivener07"
	return values
EndFunction


Version Function GetVersion()
	Version value = new Version
	value.Major = 0
	value.Minor = 0
	value.Build = 0
	value.Revision = 1
	value.Distribution = false
	return value
EndFunction


ExternalForm Function Context()
	ExternalForm value = new ExternalForm
	value.FormID = 0x00000F99
	value.FileName = "Wasteland.esp"
	return value
EndFunction


; Properties
;---------------------------------------------

Group Properties
	Quest Property MQ102 Auto Const Mandatory
EndGroup

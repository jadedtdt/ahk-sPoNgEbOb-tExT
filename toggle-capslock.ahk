#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#MaxThreadsPerHotkey 2

#X::
Toggle := True

#Z::
Toggle := !Toggle
loop
{
	If not Toggle
		break
	Input, SingleKey, L1 V
	SetCapslockState, % GetKeyState("CapsLock", "T") ? "Off" : "On"
}
return

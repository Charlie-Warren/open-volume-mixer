#Requires AutoHotkey v2.0
#SingleInstance Force

ini := A_ScriptDir "\Open Volume Mixer.ini"

; Default values (used if INI is missing or settings are missing)
defaultMonitor := 1
defaultX := 0
defaultY := 0

; Read settings
monitor := IniRead(ini, "Position", "Monitor", defaultMonitor)
x := IniRead(ini, "Position", "X", defaultX)
y := IniRead(ini, "Position", "Y", defaultY)

; Create INI if it doesn't exist
if !FileExist(ini)
{
    IniWrite(monitor, ini, "Position", "Monitor")
    IniWrite(x, ini, "Position", "X")
    IniWrite(y, ini, "Position", "Y")
}

; Open Volume Mixer
Run "C:\Windows\System32\SndVol.exe"

; Wait for window
WinWait "ahk_exe SndVol.exe"
WinActivate "ahk_exe SndVol.exe"

; Get selected monitor position
MonitorGet monitor, &monLeft, &monTop, &monRight, &monBottom

; Move relative to monitor top-left corner
WinMove monLeft + x, monTop + y,,, "ahk_exe SndVol.exe"

ExitApp
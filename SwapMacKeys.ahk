; Swap Option<->Command (Alt<->Win) in Boot Camp. Disable with Ctrl+F6. Only swaps left alt, use right alt for Ctrl+Alt+Del
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#InstallKeybdHook
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; swap left command/windows key with left alt
LWin::
    Send, {LAlt Down}
    Keywait LWin
    Send, {LAlt Up}
Return
LAlt::
    Send, {RAlt Down}
    Keywait LAlt
    Send, {RAlt Up}
Return

^F6::Suspend
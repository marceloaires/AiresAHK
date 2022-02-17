#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

SetWorkingDir, C:\AHK\1st_keyboard\support_files

#singleinstance force
;====================APP SWITCHER MACROS============================
;                    FOR MACRO KEYS (K588)
;the following macros must be assigned to the REDRAGON k588 macro keys
;^f9
;^f10
;^f11
;^f12



;=====================EXPLORER SWITCHER (TARAN CODER)=================;====================================================

^F10::
switchToExplorer(){
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
GroupAdd, taranexplorers, ahk_class CabinetWClass
if WinActive("ahk_exe explorer.exe")
	GroupActivate, taranexplorers, r
else
	WinActivate ahk_class CabinetWClass ;you have to use WinActivatebottom if you didn't create a window group.
}

; ;trying to activate these windows in reverse order from the above. it does not work.
; ^+F2::
; IfWinNotExist, ahk_class CabinetWClass
	; Run, explorer.exe
; GroupAdd, taranexplorers, ahk_class CabinetWClass
; if WinActive("ahk_exe explorer.exe")
	; GroupActivate, taranexplorers ;but NOT most recent.
; else
	; WinActivatebottom ahk_class CabinetWClass ;you have to use WinActivatebottom if you didn't create a window group.
; Return

;closes all explorer windows :/
;^!F2 -- for searchability

closeAllExplorers()
{
WinClose,ahk_group taranexplorers
}


;=============BROWSER SWITCHER===========================================================================================
;must change the ahk_exe to your browser. ex: ahk_exe chrome.exe

^F9::
IfWinNotExist, ahk_exe brave.exe
	Run, brave.exe
if WinActive ("ahk_exe brave.exe")
	send, ^{tab}
ifWinNotActive ahk_exe brave.exe
	WinActivate ahk_exe brave.exe
return



;==========PREMIERE PRO SWITCHER============================================================================================
;--------premiere must be opened---------------
;(para não correr risco de esbarrar e abrir o premiere sem querer)

^F11::
IfWinExist ahk_exe Adobe Premiere Pro.exe
	WinActivate ahk_exe Adobe Premiere Pro.exe
	
	


;======================================FOR ADOBE PREMIERE===================================================================

;=========SPEED MACROS PREMIERE===========
;F5 <asigned on premiere to speed control window
F6::send, {F5}{tab}{tab}{space}{enter} ;reverse speed
F7::send, {F5} 60 {enter} ;60% speed
F8::send, {F5} 40 {enter} ;40% speed
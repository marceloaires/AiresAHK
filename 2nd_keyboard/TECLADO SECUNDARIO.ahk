#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



SetWorkingDir, C:\AHK\2nd_keyboard\support_files
#SingleInstance force
#if (getKeyState("F23", "P"))
F23::return
;q::
;w::msgbox, you pressed %A_thishotkey% on the extra keyboard
;e::tooltip, you pressed %A_thishotkey% on the extra keyboard
;r::SoundBeep, 1000, 500


F1::run,Adobe Premiere Pro.exe
F2::run,Adobe Media Encoder.exe
F3::run,AfterFX.exe
F4::run,Photoshop.exe
F5::run,Illustrator.exe
F6::send,^!+{f11} ;LIGHTROOM--------------this shortcut must be reasigned (on .exe shortcut properties) if pc was formated
F7::run,Animate.exe
F8::run,Audition.exe
F9::run, WINWORD.EXE
F10::send, ^!+{f12} ;DISCORD --------------this shortcut must be reasigned (on .exe shortcut properties) if pc was formated
F11::
F12::run,taskmgr.exe

;===============DISCORD DISCLAIMER======================
;must assign a keybind on the .exe shortcut (properties) 
	;use this key shortcut on ahk to create a macro key
;--------------
'::
1::
2::
3::
4::
5::
6::
7::
8::
9::
0::
-::
=::
q::
w::
e::
r::
t::
y::
u::
i::
o::
´::
[::
a::
s::
d::
f::
g::
j::
k::
l::
ç::
~::
]::
\::
z::
x::
c::
v::
b::
n::
m::
,::
.::
;::
/::
;---------------
home::
end::
delete::
insert::
pgup::
pgdn::
;----------------

Numpad0::

;==========label keys (premiere)===========
Numpad1::send, ^!+1 ;mango
Numpad2::send, ^!+2 ;purple
Numpad3::send, ^!+3 ;blue
Numpad4::send, ^!+4 ;teal
Numpad5::send, ^!+5 ;brown
Numpad6::send, ^!+6 ;yellow
;==========================================

Numpad7:: 
Numpad8::
Numpad9::
NumpadDot::
NumpadDiv::
NumpadMult::
NumpadAdd::
NumpadSub::
NumpadEnter:: 
#if
;Done with F23




F12::

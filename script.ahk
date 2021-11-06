#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance

;Make keyboard more like ANSI
SC056::Shift
Capslock::SC056

SC02B::Enter
Enter::SC02B

;ALT+jkli for arrows 
; Hotkeys after this only work if RAlt is being held
#If GetKeyState("RAlt", "P")
; Remaps keys (this includes using blind send which respects held modifiers)
*i::SendInput, {Blind}{Up}
*j::SendInput, {Blind}{Left}
*l::SendInput, {Blind}{Right}
*k::SendInput, {Blind}{Down}

*w::SendInput, {Blind}{Up}
*a::SendInput, {Blind}{Left}
*d::SendInput, {Blind}{Right}
*s::SendInput, {Blind}{Down}

; Sets hotkeys back to global
#If


;Map Function Keys to media Controls
MEDIA_PLAY_PAUSE::F1
F1::MEDIA_PLAY_PAUSE
VOLUME_DOWN::F3
F3::VOLUME_DOWN
VOLUME_UP::F4
F4::VOLUME_UP

;Map Function keys 1-12 to QWERT row
CapsLock & Q::F1
CapsLock & W::F2
CapsLock & E::F3
CapsLock & R::F4
CapsLock & T::F5
CapsLock & Y::F6
CapsLock & U::F7
CapsLock & I::F8
CapsLock & O::F9
CapsLock & P::F10
CapsLock & Å::F11
CapsLock & ¨::F12

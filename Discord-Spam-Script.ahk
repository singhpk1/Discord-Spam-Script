; Language:       English
; Author:         Qwerty-Space

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force ; Makes sure the script only runs one at a time.


#MaxThreadsPerHotkey 3
*f3::
#MaxThreadsPerHotkey 1
If SpamLoop {
    SpamLoop := False
    return
}
SpamLoop := True
Loop { 100000000000                     ; Add a number after "Loop" if you want it to loop a specific number of times
    Loop 1000 {                ; The amount of messages it sends before waiting (default = 9)
        SendInput :smiley:   ; Change ":smiley:" to whatever you want
        SendInput {Enter}
        Sleep, 800
        if not SpamLoop
            break
    }
    Sleep, 0             ; How long in milliseconds it will wait before it starts sending messages again
    if not SpamLoop
        break
}

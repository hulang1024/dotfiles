CapsLock::LCtrl

vimMode := false
!z::
{
    ;HotKey "!z", "Off"
    ;Send "!z"
    ToggleVimMode()
    ;HotKey "!z", "On"
}

ToggleVimMode() {
    global vimMode
    vimMode := !vimMode
    SetNumLockState vimMode
}

#HotIf vimMode
    h::Left
    j::Down
    k::Up
    l::Right

    0::Home
    +4::End
    ^[::PgUp
    ^]::PgDn
    ^b::PgDn
    d::Delete
    g::^Home 
    G::^End
    X::Backspace
    +d::SendInput "+{End}{Delete}"
    +s::SendInput "{End}+{Home}{Delete}"
#HotIf

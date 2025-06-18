CapsLock::LCtrl

vimMode := false  ; 初始状态关闭
F1::
{
    ;HotKey "$F1", "Off"
    ;Send "{F1}"
    ToggleVimMode()
    ;HotKey "$F1", "On"
}

ToggleVimMode() {
    global vimMode
    vimMode := !vimMode
    SetNumLockState vimMode
    ;ToolTip "Vim模式: " (vimMode ? "启用" : "禁用")
    ;SetTimer ToolTip, -1000
}

; 条件热键定义
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

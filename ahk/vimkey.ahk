CapsLock::LCtrl

; qq
#HotIf WinActive("ahk_exe QQ.exe") || WinActive("ahk_exe WeChat.exe")
    ^j::^Down
    ^k::^Up
#HotIf

; NeatReader
#HotIf WinActive("ahk_exe NeatReader.exe")
    h::Left
    l::Right
    j::Down
    k::Up
#HotIf

; Chrome
!F3:: {
    if WinExist("ahk_class Chrome_WidgetWin_1") {
        WinActivate
    } else {
        Run "chrome.exe"
    }
}

; 虚拟桌面
#HotIf WinActive("ahk_class XExplorerHost") || WinActive("ahk_class Windows.UI.Core.CoreWindow")
    ; 虚拟桌面导航
    +h::Send "#^{Left}"
    +l::Send "#^{Right}"
    ; 任务导航
    h::Left
    l::Right
    j::Down
    k::Up
#HotIf

; 全局切换虚拟桌面
#^h::Send "#^{Left}"
#^l::Send "#^{Right}"

; 全局切换任务
#HotIf WinActive("ahk_class MultitaskingViewFrame")
    ; 任务导航
    h::Left
    l::Right
    j::Down
    k::Up
#HotIf

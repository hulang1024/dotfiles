oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\amro.omp.json" | Invoke-Expression

[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# PSReadLine
Set-PSReadLineOption -EditMode Vi
Set-PSReadLineOption -ViModeIndicator Prompt
Set-PSReadLineOption -BellStyle Visual
Set-PSReadLineKeyHandler -Chord "Ctrl+[" -Function ViCommandMode
# 在 Insert 模式下添加 Emacs 风格快捷键
$emacsBindings = @{
    # 光标移动
    "Ctrl+a" = "BeginningOfLine"
    "Ctrl+e" = "EndOfLine"
    "Ctrl+f" = "ForwardChar"
    "Ctrl+b" = "BackwardChar"
    "Alt+f"  = "ForwardWord"
    "Alt+b"  = "BackwardWord"
    # 历史命令
    "Ctrl+p" = "PreviousHistory"
    "Ctrl+n" = "NextHistory"
    "Ctrl+r" = "ReverseSearchHistory"
    "Ctrl+s" = "ForwardSearchHistory"
    # 文本编辑
    "Ctrl+d" = "DeleteChar"              # 删除光标处字符
    "Ctrl+h" = "BackwardDeleteChar"      # 删除光标前字符
    "Ctrl+w" = "BackwardDeleteWord"      # 删除前一个单词
    "Alt+d"  = "DeleteWord"              # 删除后一个单词
    "Ctrl+u" = "BackwardDeleteLine"      # 删除到行首
    "Ctrl+k" = "KillLine"                # 删除到行尾
    "Ctrl+y" = "Yank"                    # 粘贴
    "Alt+y"  = "YankPop"                 # 在粘贴历史中循环
    # 参数操作 (重点添加)
    "Alt+."   = "YankLastArg"            # 插入上一个命令的最后一个参数
    # 其他实用功能
    "Ctrl+l" = "ClearScreen"             # 清屏
    "Ctrl+_" = "Undo"                    # 撤销
    "Tab"    = "Complete"                # 自动补全
}

foreach ($key in $emacsBindings.Keys) {
    Set-PSReadLineKeyHandler -Chord $key -Function $emacsBindings[$key] -ViMode Insert
}

# Install-Module -Name Terminal-Icons -Repository PSGallery
Import-Module -Name Terminal-Icons

# Fzf
# Install-Module -Name PSFzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias v nvim
Set-Alias vi nvim

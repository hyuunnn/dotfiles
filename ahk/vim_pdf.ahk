; 스크립트 활성화/비활성화
ScriptEnabled := false

; F1 키를 누르면 스크립트를 활성화/비활성화
F1::
    ScriptEnabled := !ScriptEnabled
    if (ScriptEnabled) {
        ToolTip, vim_pdf Enable., A_ScreenWidth-20, A_ScreenHeight-20
    } else {
        ToolTip, vim_pdf Disable, A_ScreenWidth-20, A_ScreenHeight-20
    }
    SetTimer, RemoveToolTip, 3000 ; 3초 후 툴팁 자동으로 사라지도록 설정
return

RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
return

; HHKB
#If (ScriptEnabled)

`;::Left

'::Right

[::Up

/::Down

#If

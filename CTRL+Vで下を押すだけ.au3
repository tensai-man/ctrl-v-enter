;ESC押すと強制停止
HotKeySet("{ESC}", "Terminate")

;強制停止
Func Terminate()
    Exit 0
EndFunc

$Count = InputBox("ctrl+V してENTERするだけ ESCで強制停止", "何回する？", "", "")

For $i = 1 to $Count
;CTRL+Vを押してDoをする
Send("^v")
sleep(200)
;Send("{ENTER}")


;下を押すだけならこちらで
Send("{DOWN}")

Next

MsgBox(0, "ctrl+V してENTER", $Count & "回押したよ", 0)


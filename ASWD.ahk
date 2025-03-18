; #	Win (Windows logo key)
; !	Alt
; ^	Ctrl
; +	Shift
; &	An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

; Запуск приложения хоткей
;  #q {
;    Run Nootpad
;  }


; MOVE

^k:: {
  Send "{down}"
}

^i:: {
  Send "{up}"
}

^j:: {
  Send "{left}"
}

^l:: {
  Send "{right}"
}

^m:: {
  Send "{Blind}{left}"
}

^>б:: {
  Send "{Blind}{right}"
}

; Выделение текста
^b:: {
  Send "{blind}^{Left}^+{Right}"
}

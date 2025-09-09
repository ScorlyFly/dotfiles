
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

^n:: {
  Send "{down}"
}
^p:: {
  Send "{up}"
}
^i:: {
  Send "^{left}"
}
^o:: {
  Send "^{right}"
}

; add
^j:: {
  Send "{down}"
}
^k:: {
  Send "{up}"
}
^h:: {
  Send "{left}"
}
^l:: {
  Send "{right}"
}

; alt
!i:: {
  Send "^+{left}"
}
!o:: {
  Send "^+{right}"
}
!9:: {
  Send "{home}"
}
!0:: {
  Send "{end}"
}

; backspace
+backspace:: {
  Send "{delete}"
}
#backspace:: {
  Send "^{delete}"
}

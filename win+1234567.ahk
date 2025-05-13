; 1. Этот инструмент для удобство пользователя!! мы знаем если мы в windows разместим приложения на нижнию док панель то мы можем их вызывать через win + 1,2,3,4,5,6,7 этот инструмент позволяет предать этим цифрам осознаность
; 2. тут # обозначает win а вот буква дополнительный ключ заметим что мы меняем букву везде и цыфру
; 3. данный скрипт это более старая версия autohotkey nhk 1.1.37

; Windows + Y calls Windows + 1
#y::
Send {LWin Down}1
Sleep 200
While GetKeyState("LWin","P")
{
KeyWait, y, D T0.3
If !ErrorLevel ; if you do press y 
   {
   Send {Blind}1
   Sleep 200
   }
}
Send {LWin Up}
Return



#f::
Send {LWin Down}2
Sleep 200
While GetKeyState("LWin","P")
{
KeyWait, f, D T0.3
If !ErrorLevel ; if you do press f 
   {
   Send {Blind}2
   Sleep 200
   }
}
Send {LWin Up}
Return





#space::
Send {LWin Down}3
Sleep 200
While GetKeyState("LWin","P")
{
KeyWait, space, D T0.3
If !ErrorLevel ; if you do press space 
   {
   Send {Blind}3
   Sleep 200
   }
}
Send {LWin Up}
Return

#j::
Send {LWin Down}4
Sleep 200
While GetKeyState("LWin","P")
{
KeyWait, j, D T0.3
If !ErrorLevel ; if you do press j 
   {
   Send {Blind}4
   Sleep 200
   }
}
Send {LWin Up}
Return






#k::
Send {LWin Down}5
Sleep 200
While GetKeyState("LWin","P")
{
KeyWait, k, D T0.3
If !ErrorLevel ; if you do press k
   {
   Send {Blind}5
   Sleep 200
   }
}
Send {LWin Up}
Return

#t::
Send {LWin Down}6
Sleep 200
While GetKeyState("LWin","P")
{
KeyWait, t, D T0.3
If !ErrorLevel ; if you do press t
   {
   Send {Blind}6
   Sleep 200
   }
}
Send {LWin Up}
Return





#o::
Send {LWin Down}7
Sleep 200
While GetKeyState("LWin","P")
{
KeyWait, o, D T0.3
If !ErrorLevel ; if you do press o
   {
   Send {Blind}7
   Sleep 200
   }
}
Send {LWin Up}
Return

(set-info :status sat)

; match [ab][cd]
(assert (= "yy yy aa" (str.replace-all "ac bd aa" (RegexConcat (RegexUnion (Str2Reg "a") (Str2Reg "b") ) (RegexUnion (Str2Reg "c") (Str2Reg "d")) ) "yy")))
(check-sat)
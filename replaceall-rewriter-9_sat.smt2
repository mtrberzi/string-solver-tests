(set-info :status sat)

; Test the semantics of how what's supposed to be a literal match might be
; interpreted as an actual regular expression.
; Note semantics of Str2Reg as matching an exact string vs. parsing actual regex notation
(assert (= "ABC123abc" (str.replace-all "ABC123abc" (Str2Reg "[A-Za-z0-9]") "9")))
(check-sat)

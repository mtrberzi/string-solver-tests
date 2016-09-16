(set-logic QF_S)
(set-info :status sat)

(declare-const x String)
(declare-const y String)

(assert (= (Length x) 2))
; (assert (RegexIn x (RegexStar (RegexCharRange "a" "b"))))
(assert (= x y))
(assert (RegexIn y (RegexStar (RegexCharRange "a" "b"))))
(assert (StartsWith x "1"))

(check-sat)
(get-model)

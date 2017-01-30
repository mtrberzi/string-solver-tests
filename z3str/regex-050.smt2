(set-logic QF_S)
(set-info :status unsat)

(declare-const x String)
(declare-const y String)

(assert (= (str.len x) 2))
; (assert (RegexIn x (RegexStar (RegexCharRange "a" "b"))))
(assert (= x y))
(assert (RegexIn y (RegexStar (RegexCharRange "a" "b"))))
(assert (StartsWith x "1"))

(check-sat)
(get-model)

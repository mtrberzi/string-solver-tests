(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)

(assert (= (Concat x y) (Concat m n) ) )

(assert (RegexIn n (RegexStar (Str2Reg "abc") ) ) )

(assert (> (Length x) (Length m) ) )

(assert (= 3 (Length n) ) )

;(assert (> 4 (Length x) ) )

(assert (= 1 (Length y) ) )



(check-sat)
(get-model)


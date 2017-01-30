(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (RegexIn x (RegexStar (RegexUnion (Str2Reg "a") (Str2Reg "b") ) ) ) )

(assert (= 3 (str.len x) ) )

(assert (not (= x "abb" ) ) )
(assert (not (= x "aba" ) ) )
(assert (not (= x "bba" ) ) )
(assert (not (= x "bbb" ) ) )
(assert (not (= x "baa" ) ) )
(assert (not (= x "bab" ) ) )
(assert (not (= x "aaa" ) ) )





(check-sat)
(get-model)


(set-logic QF_S)
(set-info :status unsat)

(declare-const x String)

(assert (RegexIn x (RegexPlus (Str2Reg "a") ) ) )

(assert (> 1 (Length x) ) )


(check-sat)


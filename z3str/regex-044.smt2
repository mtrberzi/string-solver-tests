(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (RegexIn x (RegexStar (RegexDigit "") ) ) )

(assert (= 5 (Length x) ) )

(assert (not (= x "1") ) )
(assert (not (= x "0") ) )
(assert (not (= x "3") ) )
(assert (not (= x "2") ) )
(assert (not (= x "8") ) )
(assert (not (= x "5") ) )
(assert (not (= x "6") ) )
(assert (not (= x "4") ) )
(assert (not (= x "9") ) )
(assert (not (= x "7") ) )






(check-sat)
(get-model)

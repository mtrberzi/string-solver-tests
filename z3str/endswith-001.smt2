(set-logic QF_S)
(set-info :status sat)
(declare-const x String)
(declare-const z String)
(declare-const b1 bool)

(assert (= true (EndsWith x "nba") ) )



(check-sat)
(get-model)

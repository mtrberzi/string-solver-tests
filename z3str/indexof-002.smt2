(set-logic QF_S)
(set-info :status sat)
(declare-const get_fileName String)
(declare-const name0 String)
(declare-const i Int)


(assert (= i (Indexof get_fileName  ".php") ) )
(assert (> i 0 ) )
(assert (= (+ i 4) (Length get_fileName) ) )
%(assert (= name0 "efg" ) )


(check-sat)
(get-model)

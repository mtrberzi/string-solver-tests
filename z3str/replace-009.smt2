(set-logic QF_S)
(set-info :status unknown)
(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const w String)
(declare-const m1 String)
(declare-const m2 String)
(declare-const m3 String)



(assert (= y (Replace x "'" "\\'") ) )  
(assert (= z (Replace x "p" "_p") ) ) 
(assert (= w (Replace x "i" "_i") ) )
(assert (= m1 (Replace x "k" "_k") ) )
(assert (= m2 (Replace x "b" "_b") ) )
(assert (= m3 (Replace x "ii" "_i_i") ) )

(assert (= (Length x) 1))

(check-sat) 

(get-model)

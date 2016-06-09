(set-logic QF_S)
(set-info :status sat)

(declare-const x String)

(declare-const y String)

(declare-const z String)


(assert (= y (Replace x "'" "\\'")) )  ;replacing ‘ with \\' 

(assert (= z (Replace x "p" "_p")) ) ; replacing the letter p with _p 


(check-sat) 

(get-model)
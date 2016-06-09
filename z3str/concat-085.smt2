(set-logic QF_S)
(set-info :status sat)
(declare-const y2 String)
(declare-const t_str5 String)
(declare-const m2 String)
(declare-const t_str2 String)
(declare-const z String)



(assert (= z (Concat "ef" y2) ) )
(assert (= z (Concat t_str5 (Concat "ce" m2)) ) )
(assert (= z (Concat t_str2 "abc@") ) )






(check-sat)
(get-model)
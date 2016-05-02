(set-logic QF_S)
(set-info :status unknown)
(declare-const str String)
(declare-const var1 Int)
(declare-const var2 Int)
(declare-const var3 Int)

(assert (= str "Hello world!" ) )
(assert (= var1 (LastIndexof str "Hello") ) )
(assert (= var2 (LastIndexof str "World") ) )
(assert (= var3 (LastIndexof str "world") ) )


(check-sat)
(get-model)

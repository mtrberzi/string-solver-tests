(set-info :status sat)

(declare-const R String)
(declare-const Result String)

(assert (= R "b"))
(assert (= Result (str.replace-all "aaa" (Str2Reg "a") R)))
(assert (= Result "bbb"))

(check-sat)
(get-model)

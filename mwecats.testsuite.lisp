(defparameter *db* '(
(1 (Ayşe ona çamur attı) s)
(2 (Ayşe nalları dikti) s)
(2 (Ayşe onu baştan çıkardı) s)
(4 (Ayşenin etekleri tutuştu) s)
(5 (Ayşe ona kapağı attı) s)
(6 (Ayşe onun ocağına düştü) s)
))


(defun  test-ders()
  (status)
  (pprint (which-ccglab))
  (dolist (p *db*)(progn (ccg-deduce (second p))
			   (format t "~%=======~%~s~%========~%" (first p))
			   (cky-show-deduction (third p)))))

(defun  test-lfs()
  (status)
  (pprint (which-ccglab))
  (dolist (p *db*)
    (progn (ccg-deduce (second p))
	   (format t "~%=======~%~s~%========~%" (first p))
	   (cky-show-lf-eqv))))

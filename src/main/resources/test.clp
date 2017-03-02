(deftemplate UI-state-bmi
   (slot bmi)
)
(deftemplate UI-state-bmr
   (slot bmr)	
)





(defrule ageInp
	=>
	(printout t "Input your AGE (in years):" crlf)
	(bind ?age (read))
	(if (< ?age 18)
		then
		(assert (age 18L ?age))
	)
	(if (and (>= ?age 18) (< ?age 30))
		then
		(assert (age 30L ?age))
	)
	(if (and (>= ?age 30) (< ?age 50))
		then
		(assert (age 50L ?age))
	)
	(if (and (>= ?age 50) (< ?age 80))
		then
		(assert (age 80L ?age))
	)
	(if (>= ?age 80)
		then
		(printout t "You should go for priest !:)" crlf)
))


(defrule calcBMI ""
	(weight ?w)(height ?h)
    =>
    (bind ?BMI (/ ?w (** (* 0.0254 ?h) 2)))
	(assert (UI-state-bmi (bmi ?BMI)))
)


(defrule calcBMR
	(weight ?w)(height ?h)(age ?a2)(gender ?g)
	=>
	(if (eq ?g M)
		then
		(bind ?BMR (+ (- (+ (* 10 ?w) (* 15.875 ?h)) (* 5 ?a2)) 5))
		(assert (UI-state-bmr(bmr ?BMR)))
	else
		(bind ?BMR (- (- (+ (* 10 ?w) (* 15.875 ?h)) (* 5 ?a2)) 161))
		(assert (UI-state-bmr(bmr ?BMR)))
	)
)
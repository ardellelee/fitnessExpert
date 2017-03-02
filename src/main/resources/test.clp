;split BMI and BMR to different UI-states
;by Neal @2017.03.02

(deftemplate UI-state-bmi
   (slot bmi)
)
(deftemplate UI-state-bmr
   (slot bmr)
)


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
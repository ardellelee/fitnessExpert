(deftemplate UI-state
   (slot bmi)
   (slot bmr)	
)

(defrule calcBMI ""
	(weight ?w)(height ?h)(age ?a2)
    =>
        (bind ?BMI (/ ?w (** (* 0.0254 ?h) 2)))
	(bind ?BMR (- (- (+ (* 10 ?w) (* 15.875 ?h)) (* 5 ?a2)) 161))
	(assert (UI-state (bmi ?BMI) (bmr ?BMR)))

)


(deftemplate UI-state
   (slot bmi)
   (slot bmr)
)

(defrule calcBMI ""
	(weight ?w)(height ?h)(age ?a2)
    =>
        (bind ?BMI (/ ?w (** (* 0.0254 ?h) 2)))
	(bind ?BMR (- (- (+ (* 10 ?w) (* 15.875 ?h)) (* 5 ?a2)) 161))
	(assert (UI-state (bmi ?BMI) (bmr ?BMR)))

)



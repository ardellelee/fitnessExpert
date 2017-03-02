;original test code by chendan. 
;test clips jni with bmi



(deftemplate UI-state
   (slot display))

(defrule calcBMI ""
	(weight ?w)(height ?h)
    =>
    (bind ?BMI (/ ?w (** (* 0.0254 ?h) 2)))
	(assert (UI-state (display ?BMI)))
)
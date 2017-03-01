;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Template
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(deftemplate foodl "information about food per 100gm"
	(slot name)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(multislot type (allowed-symbols B L D N V))
)

(deftemplate foodg "information about food per 100gm"
	(slot name)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(multislot type (allowed-symbols B L D N V))
)

(deftemplate meal1 "information about meal"
	(slot name)
	(slot num (type NUMBER))
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot type (allowed-symbols B L D N V))
)
(deftemplate meal2 "information about meal"
	(slot name)
	(slot num (type NUMBER))
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot type (allowed-symbols B L D N V))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Load Facts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffacts load-facts
;;FOOD ITEM LIST FOR WEIGHT LOSS PACK
	(foodl (name egg)(calorie 29)(protein 3)(fat 12)(fibre 2)(carbs 12)(type B N N N))
	(foodl (name milk)(calorie 12)(protein 8)(fat 76)(fibre 1)(carbs 15)(type B L N V))
	(foodl (name curd)(calorie 23)(protein 5)(fat 12)(fibre 2)(type B N D V))
	(foodl (name butter)(calorie 22)(protein 3)(fat 22)(fibre 1)(type B L D V))
	(foodl (name carrot)(calorie 2)(protein 3)(fat 23)(fibre 23)(type B N D V))
	(foodl (name peanut)(calorie 12)(protein 5)(fat 34)(fibre 10)(type N L N V))
	(foodl (name cheese)(calorie 32)(protein 2)(fat 45)(fibre 2)(type N N D V))
;;FOOD ITEM LIST FOR WEIGHT GAIN PACK
	(foodg (name egg)(calorie 29)(protein 3)(fat 12)(fibre 2)(type B L N N))
	(foodg (name milk)(calorie 12)(protein 8)(fat 76)(fibre 1)(type B N N V))
	(foodg (name curd)(calorie 23)(protein 5)(fat 12)(fibre 2)(type B L N V))
	(foodg (name butter)(calorie 22)(protein 3)(fat 22)(fibre 1)(type B L N V))
	(foodg (name carrot)(calorie 2)(protein 3)(fat 23)(fibre 23)(type B N D V))
	(foodg (name peanut)(calorie 12)(protein 5)(fat 34)(fibre 10)(type N L N V))
	(foodg (name cheese)(calorie 32)(protein 2)(fat 45)(fibre 2)(carbs 25)(type N N D V))

	(meal1 (name egg)(num 1)(calorie 29)(protein 3)(fat 12)(fibre 2)(carbs 12)(type B))
	(meal1 (name peanut)(num 2)(calorie 12)(protein 5)(fat 34)(fibre 10)(carbs 12)(type B))
	(meal1 (name cheese)(num 3)(calorie 32)(protein 2)(fat 45)(fibre 2)(carbs 12)(type B))
	(meal1 (name milk)(num 1)(calorie 12)(protein 8)(fat 76)(fibre 1)(carbs 15)(type L))
	(meal1 (name curd)(num 1)(calorie 23)(protein 5)(fat 12)(fibre 2)(carbs 12)(type D))

	(meal2 (name egg)(num 1)(calorie 149)(protein 3)(fat 12)(fibre 2)(carbs 12)(type B))
	(meal2 (name peanut)(num 2)(calorie 232)(protein 5)(fat 34)(fibre 10)(carbs 12)(type B))
	(meal2 (name cheese)(num 3)(calorie 32)(protein 2)(fat 45)(fibre 2)(carbs 12)(type B))
	(meal2 (name milk)(num 1)(calorie 12)(protein 8)(fat 76)(fibre 1)(carbs 15)(type L))
	(meal2 (name curd)(num 1)(calorie 23)(protein 5)(fat 12)(fibre 2)(carbs 12)(type D))
)

(defglobal
	?*br-meal-name* = meal
	?*br-meal-cal* = 0.0
	?*br-meal-prot* = 0.0

)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;GETTING USER BASIC INPUT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule genderInp
	=>
	(printout t "Input your Gender(0-M / 1-F)" crlf)
	(bind ?gender (read))
	(if (= ?gender 0)
		then
		(assert (gender M))
		else
		(assert (gender F))
	)
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
	)
)


(defrule weightInp
	=>
	(printout t "Input your Weight(In KG)" crlf)
	(bind ?weight (read))
	(assert (weight ?weight))
)

(defrule heightInp
	=>
	(printout t "Enter your height (in inches) :" crlf)
	(bind ?height (read))
	(assert (height ?height))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;http://dailyburn.com/life/health/how-to-calculate-bmr/;;

(defrule calcBMI
	(weight ?w)(height ?h)
	=>
	(bind ?BMI (/ ?w (** (* 0.0254 ?h) 2)))
	(assert (BMI ?BMI))
)

(defrule calcBMR
	(weight ?w)(height ?h)(age ?a1 ?a2)(gender ?g)
	=>
	(if (eq ?g M)
		then
		(bind ?BMR (+ (- (+ (* 10 ?w) (* 15.875 ?h)) (* 5 ?a2)) 5))
		(assert (BMR ?BMR))
	else
		(bind ?BMR (- (- (+ (* 10 ?w) (* 15.875 ?h)) (* 5 ?a2)) 161))
		(assert (BMR ?BMR))
	)
)

;;to find activity level based on user age , number is no. of times user perform exercise in a week;;
;;https://en.wikipedia.org/wiki/Harris%E2%80%93Benedict_equation;;
(defrule calcExercise
	(age ?a1 ?a2)
	=>
	(if (eq ?a1 18L)
		then
		(assert (exercise heavy 7))
	)
	(if (eq ?a1 30L)
		then
		(assert (exercise moderate 4))
	)
	(if (eq ?a1 50L)
		then
		(assert (exercise light 2))
	)
	(if (eq ?a1 80L)
		then
		(assert (exercise none 0))
	)
)

(defrule calcCalorieSpend
	(BMR ?b)(exercise ?e ?h)
	=>
	(if (eq ?e none)
		then
		(bind ?dailyCalorie (* 1.2 ?b))
		(assert (dailycaloriespend ?dailyCalorie))
	)
	(if (eq ?e light)
		then
		(bind ?dailyCalorie (* 1.375 ?b))
		(assert (dailycaloriespend ?dailyCalorie))
	)
	(if (eq ?e moderate)
		then
		(bind ?dailyCalorie (* 1.55 ?b))
		(assert (dailycaloriespend ?dailyCalorie))
	)
	(if (eq ?e heavy)
		then
		(bind ?dailyCalorie (* 1.725 ?b))
		(assert (dailycaloriespend ?dailyCalorie))
	)
)
;;Note: If weight loss is your goal, you�ll want to create a calorie deficit. Aim to consume 90% of your TDEE.;;

;;Protein is calculated at 1.1 gram per pound of body weight.
;;Fats will come in at 30% of total daily intake.
;;The remainder is made up of carbohydrates.


;;http://www.livestrong.com/article/440845-calorie-distribution-in-a-meal-plan/

;;500 calories per day to lose 1 pound in 1 week;;

;;http://www.bodybuilding.com/fun/calorie-know-how-get-equation-right-to-get-results.htm;;

;;Make sure that your calories come from healthy whole foods in a ratio of 50% complex carbs, 30% lean proteins and 20% healthy fats.;;

;;1 gram of protein provides 4 calories;;
;;1 gram of carbohydrate provides 4 calories;;
;;1 gram of fat provides 9 calories;;

;;http://relentlessgains.com/macronutrient-ratio-for-lean-muscle-gains-bulking-macros/;; --good one for equations

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Our model works only on guys and girls over 5 feet;;
;;;;;;;;;;;;;;;;;;;;;;;;;http://www.manuelsweb.com/IBW.htm;;;;;;;;;;;;;;;;;below IBW and ABW taken from;;;;;;;;;;;
(defrule IntendedBodyWeight
	(gender ?g)(weight ?w)(height ?h)
	=>
	(if (eq ?g M)
		then
		(bind ?IBW (+ 50 (* 2.3 (- ?h 60))))
		(assert (IBW ?IBW))
	else
		(bind ?IBW (+ 45.5 (* 2.3 (- ?h 60))))
		(assert (IBW ?IBW))
	)
)

;;;;;;;if ABW is created it means person is obese;;;;;;;;;;;;
(defrule AbsoluteBodyWeight
	(IBW ?i)(weight ?w)
	=>
	(if (> ?w (+ ?i (* 0.30 ?i)))
		then
		(bind ?ABW (+ ?i (* 0.40 (- ?w ?i))))
		(bind ?excess (- ?w ?ABW))
		(assert (ABW ?ABW ?excess))
	)
)

;;;;;;;;;;;;;;;Rule if person found obese;;;;;;;;;;;;
(defrule PersonTypeObese
	(ABW ?a ?e)(IBW ?i)(weight ?w)
	=>
	(printout t "We found you to be Obese and we should recommend you to take weight loss pack" crlf "Your Ideal body weight should be :"?i "kg ,you are excess of :"(- ?w ?i)"kg" crlf "For you adjusted body weight calculated is :"?a"kg" crlf "If you want to show schedule for weight loss please press 0-for Yes 1-for No" crlf)
	(bind ?ans (read))
	(if (= ?ans 0)
		then
		(assert (category obese yes ?e))
	else
		(printout t "We recommend you for seroius weight loss "crlf)
		(assert (category obese no ?e))
	)
)

;;;;;;;;;;;;;;;Rule if person found underweight ;;;;;;;;;;;;
(defrule PersonTypeUndWeight
	(IBW ?i)(weight ?w)
	=>
	(if (< ?w ?i)
		then
		(printout t "We found you to be Underweight and we should recommend you to take weight gain pack" crlf "Your Ideal body weight should be :"?i "kg ,you are less of :"(abs(- ?w ?i))"kg" crlf  "If you want to show schedule for weight gain please press 0-for Yes 1-for No" crlf)
		(bind ?ans (read))
		(if (= ?ans 0)
			then
			(assert (category underweight yes (abs(- ?w ?i))))
		else
			(printout t "We recommend you for seroius weight gain "crlf)
			(assert (category underweight no (abs(- ?w ?i))))
		)
	)
)

;;;;;;;;;;;;;;;Rule if person found overweight but not obese;;;;;;;;;;;;
(defrule PersonTypeOverWeight
	(IBW ?i)(weight ?w)
	=>
	(bind ?ABW (+ ?i (* 0.40 (- ?w ?i))))
	(printout t "ABW :"?ABW crlf)
	(if (and (> ?w (+ ?ABW 1)) (<= ?w (+ ?i (* 0.30 ?i))) )
		then
		(printout t "We found you to be Overweight and we should recommend you to take light weight loss pack" crlf "Your Ideal body weight should be in range of :("(round ?i) " - " (round ?ABW) ")kg ,you are excess of :"(- ?w (round ?ABW))"kg" crlf  "If you want to show schedule for weight loss please press 0-for Yes 1-for No" crlf)
		(bind ?ans (read))
		(if (= ?ans 0)
			then
			(assert (category overweight yes (- ?w (round ?ABW))))
		else
			(printout t "We recommend you for mild weight loss "crlf)
			(assert (category overweight no (- ?w (round ?ABW))))
		)
	)
)

;;;;;;;;;;;;;;;Rule if person found Balanced Weight;;;;;;;;;;;;
(defrule PersonTypeOKWeight
	(IBW ?i)(weight ?w)
	=>
	(bind ?ABW (+ ?i (* 0.40 (- ?w ?i))))
	(if (and (<= ?w (+ ?ABW 1)) (>= ?w ?i) )
		then
		(printout t "We found you to have Balanced weight and we should recommend you to take balanced diet pack" crlf "Your Ideal body weight should be in range of :("?i " - " (+ ?ABW 1)")kg" crlf "If you want to show schedule for balanced diet please press 0-for Yes 1-for No" crlf)
		(bind ?ans (read))
		(if (= ?ans 0)
			then
			(assert (category okweight yes 0))
		else
			(printout t "We recommend you to take balanced diet "crlf)
			(assert (category okweight no 0))
		)
	)
)
;;;;;;;;;;;;;;;;;;Rules for diet user preference after category decided;;;;;;;;;;;;;;;;;

(defrule foodType
	(category ?c yes ?e)
	=>
	(printout t "Please enter your food type:" crlf "1: Vegetarian"crlf "2: Non Vegetarian  <- (default)"crlf)
	(bind ?typ (read))
	(if (= ?typ 1)
		then
		(assert (foodtype vegetarian))
	else
		(assert (foodtype nonvegetarian))
	)
)

(defrule anyAllergy
	(foodtype ?t)
	=>
	(if (eq ?t vegetarian)
		then
		(printout t "Please enter your allergy substance if any"crlf
		"0 - none" crlf
		"1 - Celery"crlf
		"2 - Cereals with Gluten(wheat barley rye Oats)"crlf
		"3 - lupin(related to legumes such as peanuts,peas,lentils and beans)"crlf
		"4 - Milk"crlf
		"5 - Mustard"crlf
		"6 - sesame seeds"crlf
		"7 - soya and sulphides"crlf)
		(bind ?ans (read))
		(if (eq ?ans 0)
			then
			(assert (allergy none))
			(printout t "You have selected none as allergent"crlf)
		)
		(if (eq ?ans 1)
			then
			(assert (allergy celery))
			(printout t "You have selected Celery as allergent"crlf)
		)
		(if (eq ?ans 2)
			then
			(assert (allergy cereals))
			(printout t "You have selected Cereals as allergent"crlf)
		)
		(if (eq ?ans 3)
			then
			(assert (allergy lupin))
			(printout t "You have selected Lupin as allergent"crlf)
		)
		(if (eq ?ans 4)
			then
			(assert (allergy milk))
			(printout t "You have selected Milk as allergent"crlf)
		)
		(if (eq ?ans 5)
			then
			(assert (allergy mustard))
			(printout t "You have selected Mustard as allergent"crlf)
		)
		(if (eq ?ans 6)
			then
			(assert (allergy sesame))
			(printout t "You have selected Sesame as allergent"crlf)
		)
		(if (eq ?ans 7)
			then
			(assert (allergy soya))
			(printout t "You have selected Soya as allergent"crlf)
		)
		(if (or (< ?ans 0) (> ?ans 7))
			then
			(printout t "Illegal selection"crlf"EXITTIINNGGGG..."crlf)
		)
	)

	(if (eq ?t nonvegetarian)
		then
		(printout t "Please enter your allergy substance if any"crlf
		"0 - none" crlf
		"1 - Celery"crlf
		"2 - Cereals with Gluten(wheat barley rye Oats)"crlf
		"3 - lupin(related to legumes such as peanuts,peas,lentils and beans)"crlf
		"4 - Milk"crlf
		"5 - Mustard"crlf
		"6 - sesame seeds"crlf
		"7 - soya and sulphides"crlf
		"8 - eggs"crlf
		"9 - Fish"crlf)
		(bind ?ans (read))
		(if (eq ?ans 0)
			then
			(assert (allergy none))
			(printout t "You have selected none as allergent"crlf)
		)
		(if (eq ?ans 1)
			then
			(assert (allergy celery))
			(printout t "You have selected Celery as allergent"crlf)
		)
		(if (eq ?ans 2)
			then
			(assert (allergy cereals))
			(printout t "You have selected Cereals as allergent"crlf)
		)
		(if (eq ?ans 3)
			then
			(assert (allergy lupin))
			(printout t "You have selected Lupin as allergent"crlf)
		)
		(if (eq ?ans 4)
			then
			(assert (allergy milk))
			(printout t "You have selected Milk as allergent"crlf)
		)
		(if (eq ?ans 5)
			then
			(assert (allergy mustard))
			(printout t "You have selected Mustard as allergent"crlf)
		)
		(if (eq ?ans 6)
			then
			(assert (allergy sesame))
			(printout t "You have selected Sesame as allergent"crlf)
		)
		(if (eq ?ans 7)
			then
			(assert (allergy soya))
			(printout t "You have selected Soya as allergent"crlf)
		)
		(if (eq ?ans 8)
			then
			(assert (allergy egg))
			(printout t "You have selected egg as allergent"crlf)
		)
		(if (eq ?ans 9)
			then
			(assert (allergy fish))
			(printout t "You have selected fish as allergent"crlf)
		)
		(if (or (< ?ans 0) (> ?ans 9))
			then
			(printout t "Illegal selection"crlf"EXITTIINNGGGG..."crlf)
		)
	)

)


;;;;;;;;;http://www.mayoclinic.org/healthy-lifestyle/weight-loss/in-depth/weight-loss/itt-20084941;;;;;;;;;;;;
;;;;;;;;;;;very good site for check calorie to reduce;;;;;;;;;;;;;
;;Your age, gender and body mass index (BMI) determine your �basal metabolic rate,� or how many calories you need each day to stay at your ;;current weight. You need to burn 3,500 calories more than you take in to lose one pound (.45 kilograms). So subtract 500 calories each ;;day from your base rate for a daily calorie goal that helps you lose about a pound a week.

;;;;;;;;;;;;;;;;;Rules for Diet selection;;;;;;;;;;;;;;


(defrule targetCalorieCalc
	(BMR ?bmr)(dailycaloriespend ?dcs)
	=>
	(if (< (+ ?bmr 500) ?dcs)
		then
		(bind ?targetcal (- (round ?dcs) 500))
		(bind ?calpermeal (/ ?targetcal 3))
		(assert (targetcalorie ?targetcal))
		(assert (caloriepermeal-tospend ?calpermeal))
	else
		(bind ?calpermeal (/ ?bmr 3))
		(assert (targetcalorie ?bmr))
		(assert (caloriepermeal-tospend ?calpermeal))
	)
)

(defrule BreakfastCalorieSum
(exists (meal1))(exists (meal2))(caloriepermeal-tospend ?cal-permeal)
=>
(bind ?mealname meal)
(bind ?count 0)
(bind ?caloriesum 0)
(bind ?proteinsum 0)
(bind ?mealname meal)
(bind ?count1 0)
(bind ?caloriesum1 0)
(bind ?proteinsum1 0)
(do-for-all-facts ((?f meal1)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count (+ ?count 1))
		(bind ?caloriesum (+ ?caloriesum ?f:calorie))
		(bind ?proteinsum (+ ?proteinsum ?f:protein))
		(bind ?mealname meal1)
	)
)
(do-for-all-facts ((?f meal2)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?mealname1 meal2)
	)
)
(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
)
(assert (breakfastcalorie ?mealname ?caloriesum ?proteinsum))
)
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
	(slot type (allowed-symbols B L D))
	(slot qty))

(deftemplate meal2 "information about meal"
	(slot name)
	(slot num (type NUMBER))
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot type (allowed-symbols B L D))
	(slot qty))

(deftemplate meal3 "information about meal"
	(slot name)
	(slot num (type NUMBER))
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot type (allowed-symbols B L D))
	(slot qty))

(deftemplate meal4 "information about meal"
	(slot name)
	(slot num (type NUMBER))
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot type (allowed-symbols B L D))
	(slot qty))

(deftemplate meal5 "information about meal"
	(slot name)
	(slot num (type NUMBER))
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot type (allowed-symbols B L D))
	(slot qty))
	
(deftemplate breakfastcalorie "information about breakfast meal selected"
	(slot mealname)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot calorie-required(type NUMBER))
)
(deftemplate lunchcalorie "information about lunch meal selected"
	(slot mealname)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot calorie-required(type NUMBER)))

(deftemplate dinnercalorie "information about dinner meal selected"
	(slot mealname)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot calorie-required(type NUMBER)))

(deftemplate breakfastcalorie-fin "information about breakfast meal selected"
	(slot mealname)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot calorie-required(type NUMBER))
)
(deftemplate lunchcalorie-fin "information about lunch meal selected"
	(slot mealname)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot calorie-required(type NUMBER)))

(deftemplate dinnercalorie-fin "information about dinner meal selected"
	(slot mealname)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot calorie-required(type NUMBER)))
	
(deftemplate bevarages "extra bevarages to compensate for remaining calories"
	(slot bev_name)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot type (allowed-symbols L B G))  ;;L-Lean ;;B-Balance ;; G-Gain
	(slot num (type NUMBER))
	)
(deftemplate fin-bevarages "extra bevarages to compensate for remaining calories"
	(slot bev_name)
	(slot calorie (type NUMBER))
	(slot protein (type NUMBER))
	(slot fat (type NUMBER))
	(slot fibre (type NUMBER))
	(slot carbs (type NUMBER))
	(slot num (type NUMBER))
	)

;; to store the current goal -
(deftemplate current_goal 
	(slot goal) 
	(slot cf)
)
;; to store the current facts – follow_diet, days-exercise, no-medical-history
(deftemplate current_fact 
	(slot fact) 
	(slot cf)
)
(deftemplate new_goal 
	(slot goal) 
	(slot cf)
)

(deftemplate UI-state-bmi
   (slot bmi)
)
(deftemplate UI-state-bmr
   (slot bmr)
)

(deffacts load-facts
	(exercise moderate 4)
	(category overweight yes 2)
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

;;;;;;;;;;;meal1 is nonveg(in lunch);;;;;;;;;;;;;;;;;;
	(meal1 (name egg_white_omlete-3_eggs)(num 1)(calorie 109)(protein 14)(fat 0)(fibre 0)(carbs 4)(type B)(qty "1"))
	(meal1 (name grilled_vegetables)(num 2)(calorie 149)(protein 3)(fat 11)(fibre 0)(carbs 12)(type B)(qty 1cup))
	(meal1 (name skim_milk_ricotta_cheese)(num 3)(calorie 39)(protein 3.2)(fat 2.2)(fibre 0)(carbs 1.5)(type B)(qty 1oz))
	(meal1 (name Hash_browns)(num 4)(calorie 280)(protein 3)(fat 18)(fibre 2)(carbs 28)(type B)(qty "1"))
	(meal1 (name fresh_blueberries)(num 5)(calorie 84)(protein 2)(fat 0)(fibre 4)(carbs 18)(type B)(qty 1cup))
	(meal1 (name Hot_Chocolate_with_lowfat_milk)(num 6)(calorie 178)(protein 8.6)(fat 2.75)(fibre 1)(carbs 30)(type B)(qty 1cup))
	(meal1 (name fat_free_greek_yogurt)(num 1)(calorie 54)(protein 9)(fat 0)(fibre 0)(carbs 4)(type L)(qty 1/2cup))
	(meal1 (name fat_free_sour_cream)(num 2)(calorie 85)(protein 3.6)(fat 0)(fibre 0)(carbs 18)(type L)(qty 1/2cup))
	(meal1 (name Unsweetened_ketchup)(num 3)(calorie 5)(protein 0)(fat 0)(fibre 0)(carbs 1)(type L)(qty 1tbsp))
	(meal1 (name Turkey_sandwich)(num 4)(calorie 350)(protein 28.5)(fat 4.5)(fibre 4)(carbs 45)(type L)(qty "1"))
	(meal1 (name pear)(num 5)(calorie 100)(protein 1)(fat 0)(fibre 3)(carbs 30)(type L)(qty "1"))
	(meal1 (name Veggie_burger)(num 1)(calorie 190)(protein 22)(fat 15)(fibre 6)(carbs 42)(type D)(qty "1"))
	(meal1 (name Steamed_Fresh_Vegetables)(num 2)(calorie 190)(protein 8)(fat 1.5)(fibre 15)(carbs 35)(type D)(qty 1cup))
	(meal1 (name fresh_berries-only_if_hungry)(num 3)(calorie 75)(protein 1)(fat 0)(fibre 3)(carbs 18)(type D)(qty 1cup))

;;;;;;;;;;;;;;meal2 dinner is non veg;;;;;;;;;;;;;
	(meal2 (name cracked_wheat)(num 1)(calorie 441)(protein 17)(fat 2.08)(fibre 16.5)(carbs 96)(type B)(qty 1cup))
	(meal2 (name skim_milk)(num 2)(calorie 86)(protein 8)(fat 0)(fibre 0)(carbs 12)(type B)(qty 1cup))
	(meal2 (name fresh_blueberries)(num 3)(calorie 84)(protein 2)(fat 0)(fibre 4)(carbs 18)(type B)(qty 1cup))
	(meal2 (name Coffee)(num 4)(calorie 30)(protein 0.31)(fat 0.14)(fibre 0)(carbs 7.14)(type B)(qty 1cup))
	(meal2 (name baby_carrots)(num 5)(calorie 50)(protein 49)(fat 0)(fibre 4)(carbs 60)(type B)(qty 1cup))
	(meal2 (name Vegetarian_Chili)(num 1)(calorie 54)(protein 13)(fat 3)(fibre 13)(carbs 31)(type L)(qty 1cup))
	(meal2 (name Ear_of_corn-boiled)(num 2)(calorie 85)(protein 5.4)(fat 2.1)(fibre 11)(carbs 41.2)(type L)(qty 1cup))
	(meal2 (name Cottage_cheese)(num 3)(calorie 5)(protein 14)(fat 1)(fibre 0)(carbs 3)(type L)(qty 1/2cup))
	(meal2 (name fresh_diced_fruit)(num 4)(calorie 350)(protein 2.5)(fat 0.5)(fibre 3.4)(carbs 25)(type L)(qty 1cup))
	(meal2 (name Spinach_salad)(num 1)(calorie 107)(protein 5)(fat 1)(fibre 1)(carbs 11)(type D)(qty 1cup))
	(meal2 (name Chicken_with_Cherry_Tomatoes)(num 2)(calorie 235)(protein 27.4)(fat 8.8)(fibre 1.4)(carbs 7)(type D)(qty "1"))
	(meal2 (name Black_Beans_and_Brown_Rice)(num 3)(calorie 213)(protein 8.8)(fat 1.5)(fibre 7.6)(carbs 45.6)(type D)(qty 1cup))
	(meal2 (name Frozen_Yogurt)(num 4)(calorie 86)(protein 2.1)(fat 0.2)(fibre 1.4)(carbs 21.2)(type D)(qty 1cup))

;;;;;;;;;;;;;;;;;meal3 veg;;;;;;;;;;;;;;;;;
	(meal3 (name fresh_diced_fruit)(num 1)(calorie 100)(protein 2.5)(fat 0.5)(fibre 3.4)(carbs 25)(type B)(qty 1cup))
	(meal3 (name Plain_Fat-Free_Yogurt)(num 2)(calorie 137)(protein 14)(fat 0.4)(fibre 0)(carbs 18.8)(type B)(qty 1cup))
	(meal3 (name whole_wheat_bagel)(num 3)(calorie 150)(protein 5.5)(fat 0.87)(fibre 2.3)(carbs 30.75)(type B)(qty 1/2cup))
	(meal3 (name skim_milk_ricotta_cheese)(num 4)(calorie 39)(protein 3.2)(fat 2.2)(fibre 0)(carbs 1.5)(type B)(qty 1oz))
	(meal3 (name sliced_strawberries)(num 5)(calorie 53)(protein 1.11)(fat 0.5)(fibre 3.3)(carbs 12.75)(type B)(qty 1cup))
	(meal3 (name Coffee_or_tea)(num 6)(calorie 30)(protein 0.31)(fat 0.14)(fibre 0)(carbs 7.14)(type B)(qty 1cup))
;;(meal3 (name Veggie-rich_bean-rich_soup)(num 7)(calorie 192)(fat 1.1)(protein 10.5)(carbs 37)(fibre 11.3)(qty 1cup))

	(meal3 (name Tuna_sandwich-on_whole_bread)(num 1)(calorie 330)(protein 19)(fat 6)(fibre 4)(carbs 26)(type L)(qty "1"))
	(meal3 (name Carrot_and_pineapple_salad)(num 2)(calorie 90)(protein 2.1)(fat 1)(fibre 3)(carbs 14)(type L)(qty 1cup))
	(meal3 (name sweet_potato-if_hungry)(num 3)(calorie 180)(protein 4)(fat 0)(fibre 7)(carbs 41)(type L)(qty 1cup))
	(meal3 (name Honey_mustard_salad_dressing)(num 1)(calorie 230)(protein 0)(fat 23)(fibre 0)(carbs 7)(type D)(qty 1cup))
	(meal3 (name Vegetarian_Quinoa_Curry)(num 2)(calorie 342)(protein 13.5)(fat 8.4)(fibre 9.3)(carbs 55)(type D)(qty 1cup))
	(meal3 (name Raspberry_mousse)(num 3)(calorie 115)(protein 5)(fat 2)(fibre 1)(carbs 20)(type D)(qty 1oz))

	;;;;;;;;;;;;;;;;;meal4 non veg--dinner;;;;;;;;;;;;;;;;;
	(meal4 (name oatmeal_supreme)(num 1)(calorie 200)(protein 5)(fat 2)(fibre 7)(carbs 44)(type B)(qty 1serve))
	(meal4 (name Coffee_or_tea)(num 2)(calorie 30)(protein 0.31)(fat 0.14)(fibre 0)(carbs 7.14)(type B)(qty 1cup))
	(meal4 (name carrot_and_hummus)(num 3)(calorie 210)(protein 7)(fat 7)(fibre 11)(carbs 30)(type B)(qty 1cup))
	(meal4 (name Tomato_cream_soup)(num 1)(calorie 160)(protein 3)(fat 5)(fibre 3)(carbs 25)(type L)(qty 1cup))
	(meal4 (name Butter_Beans_With_Lemon_and_Scallions)(num 2)(calorie 260)(protein 16)(fat 0)(fibre 16)(carbs 42)(type L)(qty 1serve))
	(meal4 (name fresh_diced_fruit)(num 3)(calorie 100)(protein 2.5)(fat 0.5)(fibre 3.4)(carbs 25)(type L)(qty 1cup))
	(meal4 (name Easy_Tangy_Salmon)(num 1)(calorie 240)(protein 30)(fat 5)(fibre 0.1)(carbs 12.6)(type D)(qty 1serve))
	(meal4 (name Soba_Noodles_With_Spicy_Cucumbers)(num 2)(calorie 250)(protein 14)(fat 7)(fibre 2)(carbs 55)(type D)(qty 8oz))
	(meal4 (name Sautéed_Spinach)(num 3)(calorie 80)(protein 5)(fat 7)(fibre 2)(carbs 4)(type D)(qty 1cup))
;;(meal4 (name froot_smoothie)(num 4)(calorie 125)(protein 2)(fat 0.3)(fibre 3)(carbs 26.3)(type D)(qty 1cup))

;;;;;;;;;;;;;;;;;;;;;;;meal5 dinner-non-veg;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	(meal5 (name oatmeal)(num 1)(calorie 200)(protein 5)(fat 2)(fibre 7)(carbs 44)(type B)(qty 1serve))
	(meal5 (name fresh_diced_fruit)(num 2)(calorie 100)(protein 2.5)(fat 0.5)(fibre 3.4)(carbs 25)(type B)(qty 1cup))
	(meal5 (name Coffee_or_tea)(num 3)(calorie 30)(protein 0.31)(fat 0.14)(fibre 0)(carbs 7.14)(type B)(qty 1cup))
	(meal5 (name Vegetable_Tortilla_Wrap)(num 4)(calorie 155)(protein 11)(fat 3.6)(fibre 18)(carbs 35)(type B)(qty "1"))
	(meal5 (name Navel_Orange)(num 5)(calorie 69)(protein 1.3)(fat 0.2)(fibre 3.1)(carbs 17.6)(type B)(qty "1"))
	(meal5 (name Tangerines)(num 6)(calorie 94)(protein 1.4)(fat 0.6)(fibre 3.2)(carbs 23.4)(type B)(qty 2))
	(meal5 (name Veggie_salad)(num 1)(calorie 114)(protein 3.9)(fat 3.1)(fibre 4.7)(carbs 18.5)(type L)(qty 1serve))
	(meal5 (name White_Bean_Soup)(num 2)(calorie 236)(protein 14)(fat 4.5)(fibre 12)(carbs 37.6)(type L)(qty 1cup))
	(meal5 (name Nonfat_Plain_yogurt)(num 3)(calorie 112)(protein 10.8)(fat 0.7)(fibre 0)(carbs 15)(type L)(qty 7oz))
	(meal5 (name Apple)(num 4)(calorie 53)(protein 0.3)(fat 0.2)(fibre 2.4)(carbs 14.1)(type L)(qty "1"))
	(meal5 (name Farmer_Market-style_salad)(num 1)(calorie 66)(protein 3.44)(fat 3.36)(fibre 2)(carbs 5.61)(type D)(qty 2cup))
	(meal5 (name Honey_Mustard_Glazed_Salmon)(num 2)(calorie 295)(protein 36.5)(fat 11)(fibre 0.4)(carbs 10.2)(type D)(qty 4oz))
	(meal5 (name Baked_potato_fat-free_sour_cream)(num 3)(calorie 168)(protein 7)(fat 0)(fibre 5)(carbs 37)(type D)(qty "1"))

	(bevarages (bev_name Green_tea)(calorie 5)(protein 0)(fat 0)(fibre 0)(carbs 0.47)(type L)(num 1))
	(bevarages (bev_name lemonade_no_sugar)(calorie 30)(protein 1)(fat 0)(fibre 3)(carbs 4)(type L)(num 2))
	(bevarages (bev_name V8-vegetable_juice)(calorie 50)(protein 2)(fat 0)(fibre 2)(carbs 10)(type L)(num 3))
	(bevarages (bev_name Nonfat_milk)(calorie 80)(protein 8.7)(fat 0.7)(fibre 0)(carbs 12.3)(type L)(num 4))
	(bevarages (bev_name whey_protein_powder)(calorie 100)(protein 20)(fat 0)(fibre 1)(carbs 5)(type L)(num 5))
	(bevarages (bev_name unsweet_grape_juice)(calorie 145)(protein 1.42)(fat .42)(fibre 0.3)(carbs 37.85)(type L)(num 6))
	
	(bevarages (bev_name lemonade_no_sugar)(calorie 30)(protein 1)(fat 0)(fibre 3)(carbs 4)(type B)(num 1))
	(bevarages (bev_name Nonfat_milk)(calorie 80)(protein 8.7)(fat 0.7)(fibre 0)(carbs 12.3)(type B)(num 2))
	(bevarages (bev_name whey_protein_powder)(calorie 100)(protein 20)(fat 0)(fibre 1)(carbs 5)(type B)(num 3))
	(bevarages (bev_name unsweet_grape_juice)(calorie 145)(protein 1.42)(fat .42)(fibre 0.3)(carbs 37.85)(type B)(num 4))
	
	(bevarages (bev_name Strawberry_banana_yogurt_smoothie)(calorie 121)(protein 7.5)(fat 1.2)(fibre 0.2)(carbs 19.7)(type G)(num 1))
	(bevarages (bev_name Strawberry_and_Avocado_Smoothie)(calorie 136)(protein 3)(fat 8.5)(fibre 4.8)(carbs 13.5)(type G)(num 2))
	(bevarages (bev_name Nonfat_milk)(calorie 80)(protein 8.7)(fat 0.7)(fibre 0)(carbs 12.3)(type G))
	
	
	;;(bevarages (bev_name guavashake)(calorie 40)(protein 12)(fat 1)(fibre 2)(carbs 0)(type B))
	;;(bevarages (bev_name wheyshake)(calorie 50)(protein 25)(fat 8)(fibre 8)(carbs 40)(type B))
	;;(bevarages (bev_name avocadoshake)(calorie 60)(protein 15)(fat 12)(fibre 2)(carbs 4)(type G))
	;;(bevarages (bev_name massgainshake)(calorie 100)(protein 20)(fat 10)(fibre 12)(carbs 60)(type G))

)
(defglobal
	?*br-meal-name* = meal
	?*bev-to-add* = meal
	?*bev-cal-add* = 0.0
	?*bev-prot-add* = 0.0
	?*bev-fat-add* = 0.0
	?*bev-fib-add* = 0.0
	?*bev-carb-add* = 0.0	
	?*bev-sno* = 0
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;GETTING USER BASIC INPUT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule calcBMI-UI
	(weight ?w)(height ?h)
    =>
    (bind ?BMI (/ ?w (** (* 0.0254 ?h) 2)))

	(assert (UI-state-bmi (bmi ?BMI)))
)


(defrule calcBMR-UI
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
	)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;http://dailyburn.com/life/health/how-to-calculate-bmr/;;
(defrule calcBMI
	(weight ?w)(height ?h)
	=>
	(bind ?BMI (/ ?w (** (* 0.0254 ?h) 2)))
	(assert (BMI ?BMI))
	(assert (UI-state-bmi (bmi ?BMI)))
)

(defrule calcBMR
	(weight ?w)(height ?h)(age ?a1 ?a2)(gender ?g)
	=>
	(if (eq ?g M)
		then
		(bind ?BMR (+ (- (+ (* 10 ?w) (* 15.875 ?h)) (* 5 ?a2)) 5))
		(assert (BMR ?BMR))
		(assert (UI-state-bmr(bmr ?BMR)))
	else
		(bind ?BMR (- (- (+ (* 10 ?w) (* 15.875 ?h)) (* 5 ?a2)) 161))
		(assert (BMR ?BMR))
		(assert (UI-state-bmr(bmr ?BMR)))
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
))

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
;;Note: If weight loss is your goal, you’ll want to create a calorie deficit. Aim to consume 90% of your TDEE.;;
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
	;;(bind ?ans (read))
	(bind ?ans 0)
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
		;;(bind ?ans (read))
		(bind ?ans 0)
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
	(if (and (> ?w (+ ?ABW 1)) (<= ?w (+ ?i (* 0.30 ?i))) )
		then
		(printout t "We found you to be Overweight and we should recommend you to take light weight loss pack" crlf "Your Ideal body weight should be in range of :("(round ?i) " - " (round ?ABW) ")kg ,you are excess of :"(- ?w (round ?ABW))"kg" crlf  "If you want to show schedule for weight loss please press 0-for Yes 1-for No" crlf)
		;;(bind ?ans (read))
		(bind ?ans 0)
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
		;;(bind ?ans (read))
		(bind ?ans 0)
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; This is an extra rule to get user input for the system
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule cfQuesRule
	(exercise ?exlevel ?exday)
	(allergy ?alerg)
=>
	(printout t crlf "How certain are you that you can follow diet provided daily :")
	;;(bind ?cf-c (read))
	;;(assert (current_fact (fact follow-diet) (cf ?cf-c)))

	(printout t crlf crlf "How certain are you that you can follow exercise for "?exday " days per week :")
	;;(bind ?cf-d (read))
	;;(assert (current_fact (fact follow-exercise) (cf ?cf-d)))

	(printout t crlf crlf "How certain are you that you will follow 3 meal a day plan :")
	;;(bind ?cf-e (read))
	;;(assert (current_fact (fact follow-meal) (cf ?cf-e)))

	(printout t crlf crlf "Did you have any previous medical history of high/low BP, Cholestrol or Diabetes ?" crlf " (1 - Yes / -1 - No )")
	;;(bind ?cf-a (read))
	;;(assert (current_fact (fact medical-hist) (cf ?cf-a)))
)

;;;;;;;;;http://www.mayoclinic.org/healthy-lifestyle/weight-loss/in-depth/weight-loss/itt-20084941;;;;;;;;;;;;
;;;;;;;;;;;very good site for check calorie to reduce;;;;;;;;;;;;;
;;Your age, gender and body mass index (BMI) determine your “basal metabolic rate,” or how many calories you need each day to stay at your ;;current weight. You need to burn 3,500 calories more than you take in to lose one pound (.45 kilograms). So subtract 500 calories each ;;day from your base rate for a daily calorie goal that helps you lose about a pound a week.

;;;;;;;;;;;;;;;;;Rules for Diet selection;;;;;;;;;;;;;;
(defrule targetCalorieCalc
	(BMR ?bmr)(dailycaloriespend ?dcs)(category ?cat yes ?num)
	=>
	(if (eq ?cat overweight)
		then
		(if (< (+ ?bmr 500) ?dcs)
			then
			(bind ?targetcal (- ?dcs 500))
			(bind ?calpermeal (/ ?targetcal 3))
			(assert (targetcalorie (round ?targetcal)))
			(assert (caloriepermeal-tospend (round ?calpermeal)))
		else	
			(bind ?calpermeal (/ ?bmr 3))
			(assert (targetcalorie (round ?bmr)))
			(assert (caloriepermeal-tospend (round ?calpermeal)))
		)
	)
	(if (eq ?cat okweight)
		then
		(bind ?calpermeal (/ ?dcs 3))
		(assert (targetcalorie (round ?dcs)))
		(assert (caloriepermeal-tospend (round ?calpermeal)))
	)
	(if (eq ?cat underweight)
		then
		(bind ?targetcal (+ ?dcs 500))
		(bind ?calpermeal (/ ?targetcal 3))
		(assert (targetcalorie (round ?targetcal)))
		(assert (caloriepermeal-tospend (round ?calpermeal)))
	)
	(if (eq ?cat obese)
		then
		(bind ?calpermeal (/ ?bmr 3))
		(assert (targetcalorie (round ?bmr)))
		(assert (caloriepermeal-tospend (round ?calpermeal)))
))

(defrule BreakfastCalorieSumNonVeg
(exists (meal1))(exists (meal2))(exists (meal3))(exists (meal4))(exists (meal5)) ;;any exist for meal
(foodtype nonvegetarian)(caloriepermeal-tospend ?cal-permeal)
=>
(bind ?mealname meal)
(bind ?count 0)
(bind ?caloriesum 0)
(bind ?proteinsum 0)
(bind ?fatsum 0)
(bind ?fibersum 0)
(bind ?carbssum 0)
(bind ?mealname meal)
(bind ?count1 0)
(bind ?caloriesum1 0)
(bind ?proteinsum1 0)
(bind ?fatsum1 0)
(bind ?fibersum1 0)
(bind ?carbssum1 0)
(do-for-all-facts ((?f meal1)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count (+ ?count 1))
		(bind ?caloriesum (+ ?caloriesum ?f:calorie))
		(bind ?proteinsum (+ ?proteinsum ?f:protein))
		(bind ?fatsum (+ ?fatsum ?f:fat))
		(bind ?fibersum (+ ?fibersum ?f:fibre))
		(bind ?carbssum (+ ?carbssum ?f:carbs))
		(bind ?mealname meal1)
	)
)
(do-for-all-facts ((?f meal2)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal2)
	)
)


(printout t crlf "For Breakfast meal1 calories are: " ?caloriesum crlf)
(printout t "For Breakfast meal2 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)


;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal3)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal3)
	)
)


(printout t "For Breakfast meal3 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal4)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal4)
	)
)


(printout t "For Breakfast meal4 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal5)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal5)
	)
)


(printout t "For Breakfast meal5 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;
;;;;;;;;;;;;assert only meal which is closer to calorie per meal required;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(bind ?calorieReq (- ?cal-permeal ?caloriesum))
(assert (breakfastcalorie (mealname ?mealname)(calorie ?caloriesum)(protein ?proteinsum)(fat ?fatsum)(fibre ?fibersum)(carbs ?carbssum)(calorie-required ?calorieReq)))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;As like above calculated calories closest to required meal in database
(defrule LunchCalorieSumNonVeg
(exists (meal1))(exists (meal2))(exists (meal3))(exists (meal4))(exists (meal5))
(caloriepermeal-tospend ?cal-permeal)(foodtype nonvegetarian)
=>
(bind ?mealname meal)
(bind ?count 0)
(bind ?caloriesum 0)
(bind ?proteinsum 0)
(bind ?fatsum 0)
(bind ?fibersum 0)
(bind ?carbssum 0)
(bind ?mealname meal)
(bind ?count1 0)
(bind ?caloriesum1 0)
(bind ?proteinsum1 0)
(bind ?fatsum1 0)
(bind ?fibersum1 0)
(bind ?carbssum1 0)
(do-for-all-facts ((?f meal1)) TRUE
	(if (eq ?f:type L)
		then
		(bind ?count (+ ?count 1))
		(bind ?caloriesum (+ ?caloriesum ?f:calorie))
		(bind ?proteinsum (+ ?proteinsum ?f:protein))
		(bind ?fatsum (+ ?fatsum ?f:fat))
		(bind ?fibersum (+ ?fibersum ?f:fibre))
		(bind ?carbssum (+ ?carbssum ?f:carbs))
		(bind ?mealname meal1)
))
(do-for-all-facts ((?f meal2)) TRUE
	(if (eq ?f:type L)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal2)
))
(printout t crlf "For Lunch meal1 calories are: " ?caloriesum crlf)
(printout t "For Lunch meal2 calories are: " ?caloriesum1 crlf)
(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)


;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal3)) TRUE
	(if (eq ?f:type L)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal3)
	)
)

(printout t "For Lunch meal3 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal4)) TRUE
	(if (eq ?f:type L)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal4)
	)
)

(printout t "For Lunch meal4 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal5)) TRUE
	(if (eq ?f:type L)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal5)
	)
)

(printout t "For Lunch meal5 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;
;;;;;;;;;;;;assert only meal which is closer to calorie per meal required;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(bind ?calorieReq (- ?cal-permeal ?caloriesum))
(assert (lunchcalorie (mealname ?mealname)(calorie ?caloriesum)(protein ?proteinsum)(fat ?fatsum)(fibre ?fibersum)(carbs ?carbssum)(calorie-required ?calorieReq)))
)


;;;;;;;;;;;;;;below rule is same as above but for dinner;;;;;;;;;;;;;;
(defrule DinnerCalorieSumNonVeg
(exists (meal1))(exists (meal2))(exists (meal3))(exists (meal4))(exists (meal5))
(caloriepermeal-tospend ?cal-permeal)(foodtype nonvegetarian)
=>
(bind ?mealname meal)
(bind ?count 0)
(bind ?caloriesum 0)
(bind ?proteinsum 0)
(bind ?fatsum 0)
(bind ?fibersum 0)
(bind ?carbssum 0)
(bind ?mealname meal)
(bind ?count1 0)
(bind ?caloriesum1 0)
(bind ?proteinsum1 0)
(bind ?fatsum1 0)
(bind ?fibersum1 0)
(bind ?carbssum1 0)
(do-for-all-facts ((?f meal1)) TRUE
	(if (eq ?f:type D)
		then
		(bind ?count (+ ?count 1))
		(bind ?caloriesum (+ ?caloriesum ?f:calorie))
		(bind ?proteinsum (+ ?proteinsum ?f:protein))
		(bind ?fatsum (+ ?fatsum ?f:fat))
		(bind ?fibersum (+ ?fibersum ?f:fibre))
		(bind ?carbssum (+ ?carbssum ?f:carbs))
		(bind ?mealname meal1)
))
(do-for-all-facts ((?f meal2)) TRUE
	(if (eq ?f:type D)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal2)
))
(printout t crlf "For Dinner meal1 calories are: " ?caloriesum crlf)
(printout t "For Dinner meal2 calories are: " ?caloriesum1 crlf)
(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal3)) TRUE
	(if (eq ?f:type D)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal3)
	)
)
(printout t "For dinner meal3 calories are: " ?caloriesum1 crlf)
(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal4)) TRUE
	(if (eq ?f:type D)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal4)
	)
)


(printout t "For dinner meal4 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal5)) TRUE
	(if (eq ?f:type D)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal5)
	)
)


(printout t "For dinner meal5 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;

;;;;;;;;;;;;assert only meal which is closer to calorie per meal required;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(bind ?calorieReq (- ?cal-permeal ?caloriesum))
(assert (dinnercalorie (mealname ?mealname)(calorie ?caloriesum)(protein ?proteinsum)(fat ?fatsum)(fibre ?fibersum)(carbs ?carbssum)(calorie-required ?calorieReq)))
)


;;;;;;;;;;;;Code for Veg meal type Breakfast , Lunch and Dinner;;;;;;;;;;;;;;;;;;
(defrule BreakfastCalorieSumVeg
(exists (meal1))(exists (meal2))(exists (meal3))(exists (meal4))(exists (meal5))	;;any exist for meal
(caloriepermeal-tospend ?cal-permeal)(foodtype vegetarian)
=>
(bind ?mealname meal)
(bind ?count 0)
(bind ?caloriesum 0)
(bind ?proteinsum 0)
(bind ?fatsum 0)
(bind ?fibersum 0)
(bind ?carbssum 0)
(bind ?mealname meal)
(bind ?count1 0)
(bind ?caloriesum1 0)
(bind ?proteinsum1 0)
(bind ?fatsum1 0)
(bind ?fibersum1 0)
(bind ?carbssum1 0)
(do-for-all-facts ((?f meal1)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count (+ ?count 1))
		(bind ?caloriesum (+ ?caloriesum ?f:calorie))
		(bind ?proteinsum (+ ?proteinsum ?f:protein))
		(bind ?fatsum (+ ?fatsum ?f:fat))
		(bind ?fibersum (+ ?fibersum ?f:fibre))
		(bind ?carbssum (+ ?carbssum ?f:carbs))
		(bind ?mealname meal1)
	)
)
(do-for-all-facts ((?f meal2)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal2)
	)
)


(printout t crlf "For Breakfast meal1 calories are: " ?caloriesum crlf)
(printout t "For Breakfast meal2 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)


;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal3)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal3)
	)
)


(printout t "For Breakfast meal3 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal4)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal4)
	)
)


(printout t "For Breakfast meal4 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal5)) TRUE
	(if (eq ?f:type B)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal5)
	)
)


(printout t "For Breakfast meal5 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;
;;;;;;;;;;;;assert only meal which is closer to calorie per meal required;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(bind ?calorieReq (- ?cal-permeal ?caloriesum))
(assert (breakfastcalorie (mealname ?mealname)(calorie ?caloriesum)(protein ?proteinsum)(fat ?fatsum)(fibre ?fibersum)(carbs ?carbssum)(calorie-required ?calorieReq)))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;As like above calculated calories closest to required meal in database
(defrule LunchCalorieSumVeg
(exists (meal1))(exists (meal2))(exists (meal3))(exists (meal4))(exists (meal5))
(caloriepermeal-tospend ?cal-permeal)(foodtype vegetarian)
=>
(bind ?mealname meal)
(bind ?count 0)
(bind ?caloriesum 0)
(bind ?proteinsum 0)
(bind ?fatsum 0)
(bind ?fibersum 0)
(bind ?carbssum 0)
(bind ?mealname meal)
(bind ?count1 0)
(bind ?caloriesum1 0)
(bind ?proteinsum1 0)
(bind ?fatsum1 0)
(bind ?fibersum1 0)
(bind ?carbssum1 0)
(do-for-all-facts ((?f meal3)) TRUE
	(if (eq ?f:type L)
		then
		(bind ?count (+ ?count 1))
		(bind ?caloriesum (+ ?caloriesum ?f:calorie))
		(bind ?proteinsum (+ ?proteinsum ?f:protein))
		(bind ?fatsum (+ ?fatsum ?f:fat))
		(bind ?fibersum (+ ?fibersum ?f:fibre))
		(bind ?carbssum (+ ?carbssum ?f:carbs))
		(bind ?mealname meal3)
))
(do-for-all-facts ((?f meal2)) TRUE
	(if (eq ?f:type L)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal2)
))
(printout t crlf "For Lunch meal3 calories are: " ?caloriesum crlf)
(printout t "For Lunch meal2 calories are: " ?caloriesum1 crlf)
(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)


;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal4)) TRUE
	(if (eq ?f:type L)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal4)
	)
)
(printout t "For Lunch meal4 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(do-for-all-facts ((?f meal5)) TRUE
	(if (eq ?f:type L)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal5)
	)
)

(printout t "For Lunch meal5 calories are: " ?caloriesum1 crlf)

(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;
;;;;;;;;;;;;assert only meal which is closer to calorie per meal required;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(bind ?calorieReq (- ?cal-permeal ?caloriesum))
(assert (lunchcalorie (mealname ?mealname)(calorie ?caloriesum)(protein ?proteinsum)(fat ?fatsum)(fibre ?fibersum)(carbs ?carbssum)(calorie-required ?calorieReq)))
)


;;;;;;;;;;;;;;below rule is same as above but for dinner;;;;;;;;;;;;;;
(defrule DinnerCalorieSumVeg
(exists (meal1))(exists (meal2))(exists (meal3))(exists (meal4))(exists (meal5))
(caloriepermeal-tospend ?cal-permeal)(foodtype vegetarian)
=>
(bind ?mealname meal)
(bind ?count 0)
(bind ?caloriesum 0)
(bind ?proteinsum 0)
(bind ?fatsum 0)
(bind ?fibersum 0)
(bind ?carbssum 0)
(bind ?mealname meal)
(bind ?count1 0)
(bind ?caloriesum1 0)
(bind ?proteinsum1 0)
(bind ?fatsum1 0)
(bind ?fibersum1 0)
(bind ?carbssum1 0)
(do-for-all-facts ((?f meal1)) TRUE
	(if (eq ?f:type D)
		then
		(bind ?count (+ ?count 1))
		(bind ?caloriesum (+ ?caloriesum ?f:calorie))
		(bind ?proteinsum (+ ?proteinsum ?f:protein))
		(bind ?fatsum (+ ?fatsum ?f:fat))
		(bind ?fibersum (+ ?fibersum ?f:fibre))
		(bind ?carbssum (+ ?carbssum ?f:carbs))
		(bind ?mealname meal1)
))
(do-for-all-facts ((?f meal3)) TRUE
	(if (eq ?f:type D)
		then
		(bind ?count1 (+ ?count1 1))
		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
		(bind ?mealname1 meal3)
))
(printout t crlf "For Dinner meal1 calories are: " ?caloriesum crlf)
(printout t "For Dinner meal3 calories are: " ?caloriesum1 crlf)
(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
	then
	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
		then
		(bind ?mealname ?mealname1)
		(bind ?count ?count1)
		(bind ?caloriesum ?caloriesum1)
		(bind ?proteinsum ?proteinsum1)
		(bind ?fatsum ?fatsum1)
		(bind ?fibersum ?fibersum1)
		(bind ?carbssum ?carbssum1)
		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		(bind ?count1 0)
		(bind ?caloriesum1 0)
		(bind ?proteinsum1 0)
		(bind ?fatsum1 0)
		(bind ?fibersum1 0)
		(bind ?carbssum1 0)
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	)
)
(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname ?mealname1)
	(bind ?count ?count1)
	(bind ?caloriesum ?caloriesum1)
	(bind ?proteinsum ?proteinsum1)
	(bind ?fatsum ?fatsum1)
	(bind ?fibersum ?fibersum1)
	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
	then
	(bind ?count1 0)
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)
(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
	then
	(bind ?mealname no-meal-found)
	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
	(bind ?caloriesum1 0)
	(bind ?proteinsum1 0)
	(bind ?fatsum1 0)
	(bind ?fibersum1 0)
	(bind ?carbssum1 0)
)

;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(do-for-all-facts ((?f meal3)) TRUE
;;	(if (eq ?f:type D)
;;		then
;;		(bind ?count1 (+ ?count1 1))
;;		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
;;		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
;;		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
;;		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
;;		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
;;		(bind ?mealname1 meal3)
;;	)
;;)
;;(printout t "For dinner meal3 calories are: " ?caloriesum1 crlf)
;;(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
;;	then
;;	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
;;		then
;;		(bind ?mealname ?mealname1)
;;		(bind ?count ?count1)
;;		(bind ?caloriesum ?caloriesum1)
;;		(bind ?proteinsum ?proteinsum1)
;;		(bind ?fatsum ?fatsum1)
;;		(bind ?fibersum ?fibersum1)
;;		(bind ?carbssum ?carbssum1)
;;		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
;;		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;		(bind ?count1 0)
;;		(bind ?caloriesum1 0)
;;		(bind ?proteinsum1 0)
;;		(bind ?fatsum1 0)
;;		(bind ?fibersum1 0)
;;		(bind ?carbssum1 0)
;;		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;	)
;;)
;;(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
;;	then
;;	(bind ?mealname ?mealname1)
;;	(bind ?count ?count1)
;;	(bind ?caloriesum ?caloriesum1)
;;	(bind ?proteinsum ?proteinsum1)
;;	(bind ?fatsum ?fatsum1)
;;	(bind ?fibersum ?fibersum1)
;;	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
;;	(bind ?count1 0)
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;)
;;
;;(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
;;	then
;;	(bind ?count1 0)
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;)
;;
;;(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
;;	then
;;	(bind ?mealname no-meal-found)
;;	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(do-for-all-facts ((?f meal4)) TRUE
;;	(if (eq ?f:type D)
;;		then
;;		(bind ?count1 (+ ?count1 1))
;;		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
;;		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
;;		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
;;		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
;;		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
;;		(bind ?mealname1 meal4)
;;	)
;;)
;;
;;
;;(printout t "For dinner meal4 calories are: " ?caloriesum1 crlf)
;;
;;(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
;;	then
;;	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
;;		then
;;		(bind ?mealname ?mealname1)
;;		(bind ?count ?count1)
;;		(bind ?caloriesum ?caloriesum1)
;;		(bind ?proteinsum ?proteinsum1)
;;		(bind ?fatsum ?fatsum1)
;;		(bind ?fibersum ?fibersum1)
;;		(bind ?carbssum ?carbssum1)
;;		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
;;		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;		(bind ?count1 0)
;;		(bind ?caloriesum1 0)
;;		(bind ?proteinsum1 0)
;;		(bind ?fatsum1 0)
;;		(bind ?fibersum1 0)
;;		(bind ?carbssum1 0)
;;		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;	)
;;)
;;(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
;;	then
;;	(bind ?mealname ?mealname1)
;;	(bind ?count ?count1)
;;	(bind ?caloriesum ?caloriesum1)
;;	(bind ?proteinsum ?proteinsum1)
;;	(bind ?fatsum ?fatsum1)
;;	(bind ?fibersum ?fibersum1)
;;	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
;;	(bind ?count1 0)
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;)
;;
;;(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
;;	then
;;	(bind ?count1 0)
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;)
;;
;;(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
;;	then
;;	(bind ?mealname no-meal-found)
;;	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;code to add for new meals;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<--start from here and create tempalate with data
;;;;;;;;;;;;;;;;;;;;;;;;;;;--------------------------;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;added code;;;;;;;;;;;;;;
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(do-for-all-facts ((?f meal5)) TRUE
;;	(if (eq ?f:type D)
;;		then
;;		(bind ?count1 (+ ?count1 1))
;;		(bind ?caloriesum1 (+ ?caloriesum1 ?f:calorie))
;;		(bind ?proteinsum1 (+ ?proteinsum1 ?f:protein))
;;		(bind ?fatsum1 (+ ?fatsum1 ?f:fat))
;;		(bind ?fibersum1 (+ ?fibersum1 ?f:fibre))
;;		(bind ?carbssum1 (+ ?carbssum1 ?f:carbs))
;;		(bind ?mealname1 meal5)
;;	)
;;)
;;
;;
;;(printout t "For dinner meal5 calories are: " ?caloriesum1 crlf)
;;
;;(if (and (>= ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If both calories are smaller than required for per-meal;;;
;;	then
;;	(if (> (- ?cal-permeal ?caloriesum) (- ?cal-permeal ?caloriesum1))
;;		then
;;		(bind ?mealname ?mealname1)
;;		(bind ?count ?count1)
;;		(bind ?caloriesum ?caloriesum1)
;;		(bind ?proteinsum ?proteinsum1)
;;		(bind ?fatsum ?fatsum1)
;;		(bind ?fibersum ?fibersum1)
;;		(bind ?carbssum ?carbssum1)
;;		;;;;;;;;;;;;;;below binding done so as to reuse the variables for other meals (reset the variables);;;;;;;;;;;;;;;;;;;;;
;;		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;		(bind ?count1 0)
;;		(bind ?caloriesum1 0)
;;		(bind ?proteinsum1 0)
;;		(bind ?fatsum1 0)
;;		(bind ?fibersum1 0)
;;		(bind ?carbssum1 0)
;;		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;	)
;;)
;;(if (and (< ?cal-permeal ?caloriesum) (>= ?cal-permeal ?caloriesum1))		;;;If 1st meal calories are higher than required for per-meal;;;;
;;	then
;;	(bind ?mealname ?mealname1)
;;	(bind ?count ?count1)
;;	(bind ?caloriesum ?caloriesum1)
;;	(bind ?proteinsum ?proteinsum1)
;;	(bind ?fatsum ?fatsum1)
;;	(bind ?fibersum ?fibersum1)
;;	(bind ?carbssum ?carbssum1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;(reset the variables);;;;;;;;;;;;;;--for next meals--;;;;;;;;;
;;	(bind ?count1 0)
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;)
;;
;;(if (and (<= ?cal-permeal ?caloriesum) (> ?cal-permeal ?caloriesum1))		;;;If 2nd meal calories are higher than required for per-meal;;;;
;;	then
;;	(bind ?count1 0)
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;)
;;
;;(if (and (< ?cal-permeal ?caloriesum) (< ?cal-permeal ?caloriesum1))		;;;If both meal calories are higher than required for per-meal;;;;
;;	then
;;	(bind ?mealname no-meal-found)
;;	(bind ?count1 0)														;;;don't bind any other value for ?caloriesum because other meals might have values
;;	(bind ?caloriesum1 0)
;;	(bind ?proteinsum1 0)
;;	(bind ?fatsum1 0)
;;	(bind ?fibersum1 0)
;;	(bind ?carbssum1 0)
;;)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;--;;;;;;;;;;;;;;;;;;;;;<<-- end here for meal to add any new;;;;;;;;;

;;;;;;;;;;;;assert only meal which is closer to calorie per meal required;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(bind ?calorieReq (- ?cal-permeal ?caloriesum))
(assert (dinnercalorie (mealname ?mealname)(calorie ?caloriesum)(protein ?proteinsum)(fat ?fatsum)(fibre ?fibersum)(carbs ?carbssum)(calorie-required ?calorieReq)))
)


;;;;;;;;;;;;;;;;;;;;;;;
(deftemplate caloriedeficit "information about dinner meal selected"
	(slot calorieless (type NUMBER))
)
(deftemplate caloriedeficitafterbev "information about dinner meal selected"
	(slot calorieless (type NUMBER))
)
;;;;;;;;;;;;;;;;;;;;;;;;
(defrule totalCalorieDeficit
	(breakfastcalorie (mealname ?m1) (calorie ?c1) (protein ?p1) (fat ?f1) (fibre ?fi1) (carbs ?ca1) (calorie-required ?cr1))
	(lunchcalorie (mealname ?m2) (calorie ?c2) (protein ?p2) (fat ?f2) (fibre ?fi2) (carbs ?ca2) (calorie-required ?cr2))
	(dinnercalorie (mealname ?m3) (calorie ?c3) (protein ?p3) (fat ?f3) (fibre ?fi3) (carbs ?ca3) (calorie-required ?cr3))
	=>
	(bind ?tot-cal-req (+ (+ ?cr1 ?cr2) ?cr3))
	(assert (caloriedeficit (calorieless ?tot-cal-req)))
)

(defrule totalCalorieDeficitAfterBev
	?br <- (breakfastcalorie-fin (mealname ?m1) (calorie ?c1) (protein ?p1) (fat ?f1) (fibre ?fi1) (carbs ?ca1) (calorie-required ?cr1))
	?lu <- (lunchcalorie-fin (mealname ?m2) (calorie ?c2) (protein ?p2) (fat ?f2) (fibre ?fi2) (carbs ?ca2) (calorie-required ?cr2))
	?di <- (dinnercalorie-fin (mealname ?m3) (calorie ?c3) (protein ?p3) (fat ?f3) (fibre ?fi3) (carbs ?ca3) (calorie-required ?cr3))
	?fbi <-	(fin-bevarages (bev_name ?b4) (calorie ?c4) (protein ?p4) (fat ?f4) (fibre ?fi4) (carbs ?ca4))
	?cls <- (caloriedeficit (calorieless ?tot-cal-req))
	=>
	(bind ?calless (- ?tot-cal-req ?c4))
	(printout t "calorie less afer bev add :" ?calless crlf)
	(retract ?cls)
	(assert (caloriedeficitafterbev (calorieless ?calless)))
)

(defrule bevaragesAddition
	?br <- (breakfastcalorie (mealname ?m1) (calorie ?c1) (protein ?p1) (fat ?f1) (fibre ?fi1) (carbs ?ca1) (calorie-required ?cr1))
	?lu <- (lunchcalorie (mealname ?m2) (calorie ?c2) (protein ?p2) (fat ?f2) (fibre ?fi2) (carbs ?ca2) (calorie-required ?cr2))
	?di <- (dinnercalorie (mealname ?m3) (calorie ?c3) (protein ?p3) (fat ?f3) (fibre ?fi3) (carbs ?ca3) (calorie-required ?cr3))
	(category ?cat yes ?over)
	=>
	(bind ?tot-cal-req (+ (+ ?cr1 ?cr2) ?cr3))
	(if (<> ?tot-cal-req 0)
		then
		(do-for-all-facts ((?f bevarages))  TRUE ;;(eq ?f:type)
			(if (or (eq ?cat overweight) (eq ?cat obese))
				then
				(if (eq ?f:type L)
					then
					(if (<= ?f:calorie (+ ?tot-cal-req 30))
						then
						(bind ?*bev-to-add* ?f:bev_name)
						(bind ?*bev-cal-add* ?f:calorie)
						(bind ?*bev-prot-add* ?f:protein)
						(bind ?*bev-fat-add* ?f:fat)
						(bind ?*bev-fib-add* ?f:fibre)
						(bind ?*bev-carb-add* ?f:carbs)
						(bind ?*bev-sno* ?f:num)
						;;(printout t "bevarage name :" ?f:bev_name crlf)
					)
					;;(printout t "overweight >>L  :" crlf)
				)
				;;(printout t "total calorie required varibale " ?tot-cal-req crlf)
			)
			(if (eq ?cat underweight)
				then
				(if (eq ?f:type G)
					then
					(if (<= ?f:calorie (+ ?tot-cal-req 30))
						then
						(bind ?*bev-to-add* ?f:bev_name)
						(bind ?*bev-cal-add* ?f:calorie)
						(bind ?*bev-prot-add* ?f:protein)
						(bind ?*bev-fat-add* ?f:fat)
						(bind ?*bev-fib-add* ?f:fibre)
						(bind ?*bev-carb-add* ?f:carbs)
						(bind ?*bev-sno* ?f:num)
						;;(printout t "bevarage name :" ?f:bev_name crlf)
					)
					;;(printout t "underweight >>L  :" crlf)
				)
				;;(printout t "total calorie required varibale " ?tot-cal-req crlf)
			)
			(if (eq ?cat okweight)
				then
				(if (eq ?f:type B)
					then
					(if (<= ?f:calorie (+ ?tot-cal-req 30))
						then
						(bind ?*bev-to-add* ?f:bev_name)
						(bind ?*bev-cal-add* ?f:calorie)
						(bind ?*bev-prot-add* ?f:protein)
						(bind ?*bev-fat-add* ?f:fat)
						(bind ?*bev-fib-add* ?f:fibre)
						(bind ?*bev-carb-add* ?f:carbs)
						(bind ?*bev-sno* ?f:num)
					)
				)
			)
				;;(printout t "under for loop:" ?f:bev_name " and type : " ?f:type)
				;;(printout t ", category " ?cat ", variable total calorie :" ?tot-cal-req crlf)
		)
		(assert (fin-bevarages (bev_name ?*bev-to-add*)(calorie ?*bev-cal-add*)(protein ?*bev-prot-add*)(fat ?*bev-fat-add*)(fibre ?*bev-fib-add*)(carbs ?*bev-carb-add*)(num ?*bev-sno*)))
		(retract ?br ?lu ?di)
		(assert (breakfastcalorie-fin (mealname ?m1)(calorie ?c1)(protein ?p1)(fat ?f1)(fibre ?fi1)(carbs ?ca1)(calorie-required 0)))
		(assert (lunchcalorie-fin (mealname ?m2)(calorie ?c2)(protein ?p2)(fat ?f2)(fibre ?fi2)(carbs ?ca2)(calorie-required 0)))
		(assert (dinnercalorie-fin (mealname ?m3)(calorie ?c3)(protein ?p3)(fat ?f3)(fibre ?fi3)(carbs ?ca3)(calorie-required 0)))
	)
)

(defrule mealsItemExtraction
	?l1 <- (breakfastcalorie-fin (mealname ?mb1) )
	?l2 <- (lunchcalorie-fin (mealname ?ml2) )
	?l3 <- (dinnercalorie-fin (mealname ?md3) )
	?l4 <- (fin-bevarages (bev_name ?bev1))
	?l5 <- (current_goal (goal plan-works) (cf ?cf1))
	=>
	(format t "		%n%n%40s%2d%1s%n%n" "We recommend you below Meals with confidence :" (* 100 ?cf1) "%")
	(format t "		%34s%n" "Meal Plan for Breakfast :")
	(format t "%3s %-30s %8s%n" "Sno" "Food Item" "Quantity")
	(do-for-all-facts ((?f ?mb1)) (eq ?f:type B)
		(format t "%3d  %-30s %6s%n" ?f:num ?f:name ?f:qty)
	)
	
	(format t "%n%34s%n" "Meal Plan for Lunch :")
	(format t "%3s %-30s %8s%n" "Sno" "Food Item" "Quantity")
	(do-for-all-facts ((?f ?ml2)) (eq ?f:type B)
		(format t "%3d  %-30s %6s%n" ?f:num ?f:name ?f:qty)
	)

	(format t "%n%34s%n" "Meal Plan for Dinner :")
	(format t "%3s %-30s %8s%n" "Sno" "Food Item" "Quantity")
	(do-for-all-facts ((?f ?md3)) (eq ?f:type B)
		(format t "%3d  %-30s %6s%n" ?f:num ?f:name ?f:qty)
	)
)

(defrule bevaragesExtraction
	?b1 <- (fin-bevarages (bev_name ?bev1)(num ?nm1))
	(category ?cat yes ?over)
	=>
	(if (or (eq ?cat overweight) (eq ?cat obese))
		then
		(format t "%n%20s%n %20s%n" "Any bevarages from below you can also take" "other than meal(1 cup)")
		(do-for-all-facts ((?f bevarages))(eq ?f:type L)(<= ?f:num ?nm1)
			(format t "%2d %-35s%n" ?f:num ?f:bev_name)
		)
	)
	(if (eq ?cat underweight)
		then
		(format t "%n%20s%n %20s%n" "Below bevarages you can also take" "other than meal(1 cup)")
		(do-for-all-facts ((?f bevarages))(eq ?f:type G)(<= ?f:num ?nm1)
			(format t "%2d %-35s%n" ?f:num ?f:bev_name)
		)
	)
	(if (or (eq ?cat okweight) (eq ?cat obese))
		then
		(format t "%n%20s%n %20s%n" "Below bevarages you can also take" "other than meal(1 cup)")
		(do-for-all-facts ((?f bevarages))(eq ?f:type B)(<= ?f:num ?nm1)
			(format t "%2d %-35s%n" ?f:num ?f:bev_name)
		)
	)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; initialise current goal when a new_goal is asserted
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule initialise-current-goal
	(not (current_goal (goal ?cg) (cf ?cfg)))
	?newg <- (new_goal (goal ?ng) (cf ?cfng))
=> 	(assert (current_goal (goal ?ng) (cf ?cfng)))
	(retract ?newg)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;combine POSITIVE (or ZERO) certainty factors for multiple conclusions
;cf(cf1,cf2) = cf1 + cf2 * (1- cf1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule combine-positive-cf
	?f1 <- (current_goal (goal ?g)(cf ?cf1&:(>= ?cf1 0)))
	?f2 <- (new_goal (goal ?g)(cf ?cf2&:(>= ?cf2 0)))
  =>
  	(retract ?f2) ; removes new_goal
	(modify ?f1 (cf =(+ ?cf1 (* ?cf2 (- 1 ?cf1)))))
	(printout t "B-1= " ?cf1 crlf) ;;; for debugging
	(printout t "B-2= " ?cf2 crlf) ;;; for debugging
	(printout t "B1-B2 combined = " (+ ?cf1 (* ?cf2 (- 1 ?cf1))) crlf)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;combine NEGATIVE certainty factors for multiple conclusions
;cf(cf1,cf2) = cf1 + cf2 * (1+cf1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule combine-negative-cf
 	(declare (salience -1))
	?f1 <- (current_goal (goal ?g)(cf ?cf1&:(< ?cf1 0)))
  	?f2 <- (new_goal (goal ?g)(cf ?cf2&:(< ?cf2 0)))
  =>
  	(retract ?f2) ; removes new_goal
	(modify ?f1 (cf =(+ ?cf1 (* ?cf2 (+ 1 ?cf1)))))
	(printout t "B-1= " ?cf1 crlf) ;;; for debugging
	(printout t "B-2= " ?cf2 crlf) ;;; for debugging
	(printout t "B1-B2 combined = " (+ ?cf1 (* ?cf2 (+ 1 ?cf1))) crlf)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;combine POSITIVE & NEGATIVE certainty factors for multiple conclusions
;cf(cf1,cf2) = (cf1 + cf2)/ 1- MIN(|cf1|, |cf2|)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule combine-pos-neg-cf
 	(declare (salience -1))
  	?f1 <- (current_goal (goal ?g) (cf ?cf1))
  	?f2 <- (new_goal (goal ?g) (cf ?cf2))
  	(test (< (* ?cf1 ?cf2) 0))
  =>
  	(retract ?f2) ; removes new_goal
	(modify ?f1 (cf =(/ (+ ?cf1 ?cf2) (- 1 (min (abs ?cf1) (abs ?cf2))))))
)

;; **********************    Business Rules    ******************* 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IF follow diet & follow meal THEN plan-work (0.8)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule cf-rule-1
	(current_fact (fact follow-diet) (cf ?cf-c))
	(current_fact (fact follow-meal) (cf ?cf-d))
=>	(assert (new_goal (goal plan-works) (cf (* (min ?cf-c ?cf-d) 0.8))))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; if follow-exercise THEN plan-work (0.4)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule cf-rule-2
	(current_fact (fact follow-exercise) (cf ?cf-A)) 
=> 	(assert (new_goal (goal plan-works) (cf (* ?cf-A 0.4))))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; if medical history THEN plan-work (-0.5)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule cf-rule-3
	(current_fact (fact medical-hist) (cf ?cf-A)) 
=> 	(assert (new_goal (goal plan-works) (cf (* ?cf-A -0.5))))
)


package examples.hello;

import com.alibaba.fastjson.JSONObject;
import examples.vo.PersonForm;
import net.sf.clipsrules.jni.Environment;
import net.sf.clipsrules.jni.FactAddressValue;
import net.sf.clipsrules.jni.FloatValue;
import net.sf.clipsrules.jni.MultifieldValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


@Controller
public class WebController extends WebMvcConfigurerAdapter {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showForm() {
        return "form";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject checkPersonInfo(@RequestBody PersonForm args) {

        JSONObject ret = new JSONObject();

        Environment clips;
        // answers
        String[] answers = {
                "(assert(weight "+args.getWeight()+"))",
                "(assert(height "+args.getHeight()+"))"

        };



        /*========================*/
        /* Load the clips program. */
        /*========================*/

        clips = new Environment();
        clips.loadFromResource("/mine_ext-withcf2.clp");
        clips.reset();

        // input
        for (String factString : answers) {
            clips.eval(factString);
        }

        // assert gender
        // don't use "(assert(age "+args.getIsMale()+"))" in answers, as facts in clips is M/F instead of 0/1
        if (args.getIsMale() == 1){
            clips.eval("(assert (gender M))");
        } else {
            clips.eval("(assert (gender F))");
        }

        //assert age
        //in clips logic, age is divided into 4 levels, so no use to send the exact age.
        int age = args.getAge();
        if(age<18){
            clips.eval("(assert (age 18L "+age+"))");
        }
        else if(age<30){
            clips.eval("(assert (age 30L "+age+"))");
        }
        else if(age<50){
            clips.eval("(assert (age 50L "+age+"))");
        }
        else
        {
            clips.eval("(assert (age 80L "+age+"))");
        }


        //assert DietCertain
            clips.eval("(assert (current_fact (fact follow-diet) (cf "+args.getIsDietCertain()+")))");
        //assert ExerciseCertain
            clips.eval("(assert (current_fact (fact follow-exercise) (cf "+args.getIsExerciseCertain()+")))");
        //assert MealCertain
            clips.eval("(assert (current_fact (fact follow-meal) (cf "+args.getIsMealCertain()+")))");
        //assert MedicalCertain
            clips.eval("(assert (current_fact (fact medical-hist) (cf "+args.getIsMedicalCertain()+")))");

        //assert vegetarian
        if (args.getIsVegetarian() == 1){
            clips.eval("(assert (foodtype vegetarian))");
        } else {
            clips.eval("assert (foodtype nonvegetarian))");
        }

        //assert allergy
        if(args.getIsNone() == Boolean.TRUE){
            clips.eval("(assert (allergy none))");
        }
        else if(args.getIsCelery() == Boolean.TRUE){
            clips.eval("(assert (allergy celery))");
        }
        else if(args.getIsCerealsAndGluten()==Boolean.TRUE){
            clips.eval("(assert (allergy cereals))");
        }
        else if(args.getIsLupin()==Boolean.TRUE){
            clips.eval("(assert (allergy lipin))");
        }
        else if(args.getIsMilk()==Boolean.TRUE){
            clips.eval("(assert (allergy milk))");
        }
        else if(args.getIsMustard()==Boolean.TRUE){
            clips.eval("(assert (allergy mustard))");
        }
        else if(args.getIsSesame()==Boolean.TRUE){
            clips.eval("(assert (allergy sesame))");
        }
        else if(args.getIsSoyaAndSulphides()==Boolean.TRUE){
            clips.eval("(assert (allergy soya))");
        }

        clips.run();

        String breakfastcalorie ="(find-all-facts ((?f breakfastcalorie-fin)) TRUE)";
        //get the value of breakfastcalorie'mealname
        FactAddressValue fvbreakfastcalorie = (FactAddressValue) ((MultifieldValue) clips.eval(breakfastcalorie)).get(0);

        String factConfidence = "(find-all-facts ((?f current_goal)) TRUE)";
        FactAddressValue fvConfidence = (FactAddressValue) ((MultifieldValue) clips.eval(factConfidence)).get(0);
        String strBreakfast ="";
        try {
            strBreakfast = fvbreakfastcalorie.getFactSlot("mealname").toString();
        } catch (Exception e) {
            e.printStackTrace();
        }

        String lunchCalorie ="(find-all-facts ((?f lunchcalorie-fin)) TRUE)";
        //get the value of lunchcalorie'mealname
        FactAddressValue fvlunchCalorie = (FactAddressValue) ((MultifieldValue) clips.eval(lunchCalorie)).get(0);
        String strLunch ="";
        try {
            strLunch = fvlunchCalorie.getFactSlot("mealname").toString();
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println(strLunch);
        String evalStrbmi ="(find-all-facts ((?f UI-state-bmi)) TRUE)";
        //get BMI and BMR
        FactAddressValue fvbmi = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrbmi)).get(0);
        String evalStrbmr ="(find-all-facts ((?f UI-state-bmr)) TRUE)";
        FactAddressValue fvbmr = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrbmr)).get(0);
        //get breakfast 1
        String evalStrTest = "(find-all-facts ((?f "+strBreakfast+")) (eq ?f:type B))";
        FactAddressValue fvbreakfast1Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTest)).get(0);
        //get breakfast 2

        FactAddressValue fvbreakfast2Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTest)).get(1);
        FactAddressValue fvbreakfast3Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTest)).get(2);
        FactAddressValue fvbreakfast4Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTest)).get(3);
        FactAddressValue fvbreakfast5Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTest)).get(4);
        FactAddressValue fvbreakfast6Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTest)).get(5);
        String evalStrTestLunch = "(find-all-facts((?f "+strLunch+"))(eq ?f:type L))";
        FactAddressValue fvLunch1Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTestLunch)).get(0);
        //get lunch

        String evalStrTestDinner = "(find-all-facts((?f "+strLunch+"))(eq ?f:type D))";

        FactAddressValue fvLunch2Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTestLunch)).get(1);
        FactAddressValue fvLunch3Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTestLunch)).get(2);

        FactAddressValue fvLunch4Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTestDinner)).get(0);
        FactAddressValue fvLunch5Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTestDinner)).get(1);
        FactAddressValue fvLunch6Name = (FactAddressValue) ((MultifieldValue) clips.eval(evalStrTestDinner)).get(2);


        ret.put("success", true);

        JSONObject resp = new JSONObject();
        ret.put("response", resp);
        resp.put("age", args.getAge());
        resp.put("height", args.getHeight());
        resp.put("weight", args.getWeight());
        if (args.getIsMale() == 1){
            resp.put("gender", "Male");
        } else {
            resp.put("gender", "Female");
        }
        if (args.getIsVegetarian() == 1){
            resp.put("foodType", "Vegetarian");
        } else {
            resp.put("foodType", "Non Vegetarian");
        }

        //output
        try{
            resp.put("bmi", ((FloatValue) fvbmi.getFactSlot("bmi")).floatValue()) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("bmr", ((FloatValue) fvbmr.getFactSlot("bmr")).floatValue()) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast1Name", (fvbreakfast1Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast2Name", (fvbreakfast2Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast3Name", (fvbreakfast3Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast4Name", (fvbreakfast4Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast5Name", (fvbreakfast5Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast6Name", (fvbreakfast6Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }


        try{
            resp.put("breakfast1Qty", (fvbreakfast1Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast2Qty", (fvbreakfast2Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast3Qty", (fvbreakfast3Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast4Qty", (fvbreakfast4Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast5Qty", (fvbreakfast5Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("breakfast6Qty", (fvbreakfast6Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }


        try{
            resp.put("lunch1Name", (fvLunch1Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch2Name", (fvLunch2Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch3Name", (fvLunch3Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch4Name", (fvLunch4Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch5Name", (fvLunch5Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch6Name", (fvLunch6Name.getFactSlot("name").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }


        try{
            resp.put("lunch1Qty", (fvLunch1Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch2Qty", (fvLunch2Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch3Qty", (fvLunch3Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch4Qty", (fvLunch4Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch5Qty", (fvLunch5Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("lunch6Qty", (fvLunch6Name.getFactSlot("qty").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }


        try{
            resp.put("confidence", (fvConfidence.getFactSlot("cf").toString())) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }
        clips.clear();
        return ret;
    }
}

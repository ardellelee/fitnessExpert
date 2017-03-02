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
                "(assert(height "+args.getHeight()+"))",
                "(assert(age "+args.getAge()+"))",
                // "(assert(gender "+args.getIsMale()+"))",
                // "(assert(age "+args.getIsVegetarian()+"))"

        };


        /*========================*/
        /* Load the clips program. */
        /*========================*/

        clips = new Environment();
        clips.loadFromResource("/testBmiBmr.clp");
        clips.reset();

        // input
        for (String factString : answers) {
            clips.eval(factString);
        }
        clips.run();
        String evalStr ="(find-all-facts ((?f UI-state)) TRUE)";
        FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(0);

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
            resp.put("bmi", ((FloatValue) fv.getFactSlot("bmi")).floatValue()) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        try{
            resp.put("bmr", ((FloatValue) fv.getFactSlot("bmr")).floatValue()) ;
        } catch (Exception e){
            System.out.println(e.getStackTrace());
        }

        return ret;
    }
}

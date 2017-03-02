package test;

import net.sf.clipsrules.jni.*;
import org.junit.Test;

/**
 * Created by chendan on 2017/2/27.
 */
public class TestTest {

    @Test
    public  void testMine() throws Exception {
        Environment clips;
        // answers
        String[] answers = {
                "(assert(weight 54))",
                "(assert(height 24))"
        };
        /*========================*/
        /* Load the auto program. */
        /*========================*/

        clips = new Environment();

        clips.loadFromResource("/testBmi.clp");

        clips.reset();

        // input
        for (String factString : answers) {
            clips.eval(factString);
        }
        clips.run();

        String evalStr ="(find-all-facts ((?f UI-state)) TRUE)";

        FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(0);

        System.out.println(((FloatValue) fv.getFactSlot("display")).floatValue());
    }
}

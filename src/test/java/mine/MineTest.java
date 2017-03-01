package mine;

import net.sf.clipsrules.jni.Environment;
import net.sf.clipsrules.jni.FactAddressValue;
import net.sf.clipsrules.jni.MultifieldValue;
import org.junit.Test;

/**
 * Created by chendan on 2017/2/24.
 */
public class MineTest {

    @Test
    public  void testMine(){
        Environment clips;
        // answers
        String[] answers = {
                "(assert (height 170))",
                "(assert (weight 70))",
                "(assert (age 45))",
                "(assert (gender 0))"
        };
        /*========================*/
        /* Load the auto program. */
        /*========================*/

        clips = new Environment();

        clips.loadFromResource("/auto.clp");

        // calculate
        for (String factString : answers) {
            clips.eval(factString);
        }

        String evalStr = "(find-fact ((?f UI-state)) TRUE)";

        FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(0);

    }
}

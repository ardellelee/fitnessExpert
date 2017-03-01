package mine;

import net.sf.clipsrules.jni.Environment;
import net.sf.clipsrules.jni.FactAddressValue;
import net.sf.clipsrules.jni.MultifieldValue;
import net.sf.clipsrules.jni.StringValue;
import org.junit.Assert;
import org.junit.Test;

import java.util.Locale;

/**
 * Created by chendan on 2017/2/24.
 */
public class AutoTest {

    @Test
    public  void testMine() throws Exception {
        Environment clips;
        // answers
        String[] answers = {
                "(assert (greeting yes))",
                "(assert (engine-starts yes))",
                "(assert (runs-normally yes))"
        };
        /*========================*/
        /* Load the auto program. */
        /*========================*/

        clips = new Environment();

        clips.loadFromResource("/auto.clp");
        clips.loadFromResource("/auto_zh.clp");

        clips.reset();

        // input
        for (String factString : answers) {
            clips.eval(factString);
        }
        clips.run();

        String evalStr = "(find-fact ((?f UI-state)) TRUE)";

        FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(0);

        Assert.assertEquals(fv.getFactSlot("state").toString(),"conclusion");

        Assert.assertEquals(((StringValue) fv.getFactSlot("display")).stringValue(),"Suggested Repair: None.");

    }

    @Test
    public  void testMineWithNone() throws Exception {
        Environment clips;
        // answers
        String[] answers = {
                "(assert (greeting yes))",
                "(assert (engine-starts no))",
                "(assert (runs-normally no))",
                "(assert (engine-rotates no))",
                "(assert (engine-sluggish no))",
                "(assert (engine-misfires no))",
                "(assert (engine-knocks no))",
                "(assert (engine-output-low no))",
                "(assert (tank-has-gas no))",
                "(assert (battery-has-charge no))",
                "(assert (point-surface-state no))",
                "(assert (conductivity-test-positive no))"
        };
        /*========================*/
        /* Load the auto program. */
        /*========================*/

        clips = new Environment();

        clips.loadFromResource("/auto.clp");
        clips.loadFromResource("/auto_zh.clp");

        clips.reset();

        // input
        for (String factString : answers) {
            clips.eval(factString);
        }
        clips.run();

        String evalStr = "(find-fact ((?f UI-state)) TRUE)";

        FactAddressValue fv = (FactAddressValue) ((MultifieldValue) clips.eval(evalStr)).get(0);

        Assert.assertEquals(fv.getFactSlot("state").toString(),"conclusion");

        Assert.assertEquals(((StringValue) fv.getFactSlot("display")).stringValue(),"Suggested Repair.");

    }
}

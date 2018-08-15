import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;

// import junit.tests.framework.TestListenerTest

import com.gradescope.jh61b.grader.GradedTestListenerJSON;

@RunWith(Suite.class)
@Suite.SuiteClasses({RationalTest.class})
public class RunTests {
    public static void main(String[] args) {
        JUnitCore runner = new JUnitCore();
        runner.addListener(new GradedTestListenerJSON());
        // runner.addListener(new TestListenerTest());
        Result r = runner.run(RunTests.class);
    }
}

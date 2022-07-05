package tests;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class TestParallelJunit4 {
	 @Test
	    public void testParallel() {
	        Results results = Runner.path("classpath:tests").tags("@second").parallel(5);
	        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
	    }
}

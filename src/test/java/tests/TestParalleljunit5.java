package tests;

import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class TestParalleljunit5 {
	 @Test
	    void testParallel() {
	        Results results = Runner.path("classpath:tests").tags("~@second").parallel(5);
	        assertEquals(0, results.getFailCount(), results.getErrorMessages());
	    }
    
}

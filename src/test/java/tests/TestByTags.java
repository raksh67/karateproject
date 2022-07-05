package tests;


import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import static org.junit.jupiter.api.Assertions.*;

public class TestByTags {
@Karate.Test
Karate testSample() {
	return Karate.run("Sample").relativeTo(getClass());
}

@Karate.Test
Karate testTags() {
    return Karate.run("Sample").tags("@second").relativeTo(getClass());
}

}

package runner;
/**
 * Created by Henrique and Wellington on 16/12/2020.
 */

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/features"}, plugin = {"json:target/reports/CucumberReport.json"},
        glue = "steps", tags = {"~@Cenarios"})
public class RunnerIgnoreTest {
}

package definitions;

import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class AnnaVStepDefs {
    @When("AV go to {string} location")
    public void avGoToLocation(String sString) {
        switch (sString) {
            case "Quizzes": getDriver().findElement(By.xpath(XPathLibrary.sQuizzesLocation)).click();
                            break;
            case "Create New Quiz": getDriver().findElement(By.xpath(XPathLibrary.sCreateNewQuiz)).click();
                                    break;
        }
    };
};

package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class AnnaVStepDefs {
    @When("AV go to {string} location")
    public void avGoToLocation(String sString) {
        switch (sString) {
            case "Quizzes": getDriver().findElement(By.xpath(XPathLibrary.sQuizzesLocation)).click();
                            break;
            case "Create New Quiz": getDriver().findElement(By.xpath(XPathLibrary.sCreateNewQuizLocation)).click();
                                    break;
        }
    };

    @Then("AV type {string} as {string}")
    public void avTypeAs(String aText, String sQuizName) {
        switch (sQuizName){
            case "Quiz name": getDriver().findElement(By.xpath(XPathLibrary.sQuizNameLocation)).sendKeys(aText);
                              break;
        }
    }

    @Then("AV add question")
    public void avAddQuestion() {
        getDriver().findElement(By.xpath(XPathLibrary.sAddQuestionLinkLocation)).click();
    }

    @Given("AV navigate to {string}")
    public void avNavigateTo(String sURL) {
        getDriver().get("http://ask-internship.portnov.com/#/registration");
    }


    @Then("AV input {string} as {string}")
    public void avInputAs(String sText, String sRegistrationFieldLocation) {
        switch (sRegistrationFieldLocation) {
            case "FirstName": getDriver().findElement(By.xpath(XPathLibrary.sRegFirstNameLocation)).sendKeys(sText);
                            break;
            case "LastName": getDriver().findElement(By.xpath(XPathLibrary.sRegLastNameLocation)).sendKeys(sText);
                             break;
            case "Email": getDriver().findElement(By.xpath(XPathLibrary.sRegEmailLocation)).sendKeys(sText);
                            break;
            case "GroupCode": getDriver().findElement(By.xpath(XPathLibrary.sRegGroupLocation)).sendKeys(sText);
                             break;
            case "Password": getDriver().findElement(By.xpath(XPathLibrary.sRegPasswordLocation)).sendKeys(sText);
                             break;
            case "ConfirmPassword": getDriver().findElement(By.xpath(XPathLibrary.sRegConfirmPasswordLocation)).sendKeys(sText);
                           break;
        }
    }

    @Then("AV click Register Me button")
    public void avClickRegisterMeButton() {
        getDriver().findElement(By.xpath(XPathLibrary.sRegRegisterMeButtonLocation)).click();
    }
};

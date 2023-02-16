package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class NK_Quiz_StepDefs {
    @Given("NK navigate to url {string}")
    public void nkNavigateToUrl(String sUrl) {
        getDriver().get("http://ask-internship.portnov.com/#/login");
    }

    @Then("NK enter {string} into email field")
    public void nkEnterIntoEmailField(String sEmail) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(sEmail);
    }

    @Then("NK enter {string} into password field")
    public void nkEnterIntoPasswordField(String sPassword) {
        getDriver().findElement(By.xpath("//input[@formcontrolname='password']")).sendKeys(sPassword);
    }

    @Then("NK click on Sign In button")
    public void nkClickOnSignInButton() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }

    @Then("NK should see text contain {string}")
    public void nkShouldSeeTextContain(String sActualText) {
        String sPresentText = getDriver().findElement(By.xpath("//footer[contains(text(),'Portnov')]")).getText();
        assertThat(sPresentText.equals(sActualText)).isTrue();

    }

    @Then("NK click on Quizzes field")
    public void nkClickOnQuizzesField() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }


    @Then("NK click on Create New Quiz button")
    public void nkClickOnCreateNewQuizButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'New Quiz')]")).click();
    }

    @Then("NK enter {string} into the Title Of The Quiz")
    public void nkEnterIntoTheTitleOfTheQuiz(String sTitleQ) {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys(sTitleQ);
    }

    @Then("NK click on Add Question button")
    public void nkClickOnAddQuestionButton() {
        getDriver().findElement(By.xpath("//mat-icon[text()='add_circle']")).click();
    }


    @Then("NK should see text displayed {string}")
    public void nkShouldSeeTextDisplayed(String sActualTextNq) {
        String sPresentTextNq = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'Q1: new empty question')]")).getText();
        assertThat(sPresentTextNq.equals(sActualTextNq)).isTrue();
    }

    @Then("NK should select Single Choice question type")
    public void nkShouldSelectSingleChoiceQuestionType() {
        getDriver().findElement(By.xpath("//div[contains(text(),'Single-Choice')]")).click();
    }

    @Then("NK enter {string} into Question field")
    public void nkEnterIntoQuestionField(String sQuestion) {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys(sQuestion);
    }


    @Then("NK enter {string} into Option a field")
    public void nkEnterIntoOptionAField(String sQuestionAn1) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 1*']")).sendKeys(sQuestionAn1);

    }

    @Then("NK enter {string} into Option b field")
    public void nkEnterIntoOptionBField(String sQuestionAn2) {
        getDriver().findElement(By.xpath("//textarea[@placeholder='Option 2*']")).sendKeys(sQuestionAn2);
    }

    @Then("NK click on radio button for Option a")
    public void nkClickOnRadioButtonForOptionA() {
        getDriver().findElement(By.xpath("//mat-radio-button[@class='mat-radio-button mat-accent'][1]")).click();
    }

    @Then("NK click on Save button")
    public void nkClickOnSaveButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
    }

    @Then("NK should see text present {string}")
    public void nkShouldSeeTextPresent(String sActualTextQuiz) {
        String sPresentTextQuiz = getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'0 Nat Quiz Title')]")).getText();
        assertThat(sPresentTextQuiz.equals(sActualTextQuiz)).isTrue();
    }

    @When("NK click on Quiz Title created")
    public void nkClickOnQuizTitleCreated() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'0 Nat Quiz Title')]")).click();
    }

    @Then("NK click on element with xpath")
    public void nkClickOnElementWithXpath() {
        getDriver().findElement(By.xpath("//mat-panel-title[contains(text(),'0 Nat Quiz Title')]/../../..//span[contains(text(),'Delete')]")).click();
    }

    @Then("NK click on Delete button")
    public void nkClickOnDeleteButton() {
        getDriver().findElement(By.xpath("//div[@mat-dialog-actions]//span[contains(text(),'Delete')]")).click();
    }


    @Then("NK should not see displayed Quiz Title created")
    public void nkShouldNotSeeDisplayedQuizTitleCreated() {
        assertThat(getDriver().findElements(By.xpath("//mat-panel-title[contains(text(),'0 Nat Quiz Title')]"))).hasSize(0);
    }
}

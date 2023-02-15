package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class NataliK_StepDefs {
    @Given("I navigate to {string}")
    public void iNavigateTo(String sURL) {
        getDriver().get("http://ask-internship.portnov.com/#/registration");
    }

    @Then("I get the page information")
    public void iGetThePageInformation() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandles());
    }



    @When("NK click on Register Me button")
    public void nkClickOnRegisterMeButton() {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Me')]")).click();
    }

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String sErrorMessage) {
        String sPresentMessage = getDriver().findElement(By.xpath("//mat-form-field[4]//mat-error[1]")).getText();
        assertThat(sPresentMessage.equals(sErrorMessage)).isTrue();

    }

    @When("NK type {string}to the group_field")
    public void nkTypeToTheGroup_field(String sStringLc) {
        getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).sendKeys(sStringLc);
    }

    @Then("error message {string} should be present")
    public void errorMessageShouldBePresent(String sErrorMessageL) {
        String sPresentMessage = getDriver().findElement(By.xpath("//mat-error[text()='Too long. Should be at least 1 to 6 characters']")).getText();
        assertThat(sPresentMessage.equals(sErrorMessageL)).isTrue();
    }



    @Then("error message no white space {string} should be present")
    public void errorMessageNoWhiteSpaceShouldBePresent(String sErrorMnoWhiteS) {
        String sPresentMessage = getDriver().findElement(By.xpath("//mat-error[text()='Whitespaces are not allowed']")).getText();
        assertThat(sPresentMessage.equals(sErrorMnoWhiteS)).isTrue();
    }


    @Then("field with xpath should have attribute {string} as {string}")
    public void fieldWithXpathShouldHaveAttributeAs(String sAttribute, String sAttributeValue) {
        assertThat(getDriver().findElement(By.xpath("//input[@placeholder='Group Code']")).getAttribute("aria-invalid")).isEqualTo("false");
    }
}


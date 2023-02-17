package definitions;


import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.*;

public class DariaStepdefs {
    @Given("DS go to {string} application")
    public void dsGoToApplication(String sURL) {
        getDriver().get("http://ask-internship.portnov.com/#/login");
    }


    @Then("DS type {string} to email field")
    public void dsTypeToEmailField(String sString) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(sString);
    }

    @Then("DS type {string} to password field")
    public void dsTypeToPasswordField(String sString) {
        getDriver().findElement(By.xpath("//input[@type='password']")).sendKeys(sString);
    }

    @Then("DS click on sign in button")
    public void dsClickOnSignInButton() {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
    }

    @Then("DS see home page")
    public void dsSeeHomePage() {
        getDriver().findElement(By.xpath("//mat-list[@class='mat-list']")).isDisplayed();
    }

    @Then("DS go to settings")
    public void dsGoToSettings() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Settings')]")).click();
    }

    @Then("DS see options to change name or password")
    public void dsSeeOptionsToChangeNameOrPassword() {
        assertThat(getDriver().findElement(By.xpath("//span[text()='Change Your Password']")).isDisplayed()).isTrue();
    }

    @Then("DS click on change password")
    public void dsClickOnChangePassword() {
        getDriver().findElement(By.xpath("//span[text()='Change Your Password']")).click();
    }

    @Then("DS see field for typing new password")
    public void dsSeeFieldForTypingNewPassword() {
        assertThat(getDriver().findElement(By.xpath("//mat-dialog-container[@role='dialog']")).isDisplayed()).isTrue();
    }


    @Then("DS type  {string} to field password")
    public void dsTypeToFieldPassword(String sString) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(sString);
    }

    @Then("DS type {string} to field new password")
    public void dsTypeToFieldNewPassword(String sString) {
        getDriver().findElement(By.xpath("//input[@placeholder='New Password']")).sendKeys(sString);
    }

    @Then("DS type {string} to field confirm new password")
    public void dsTypeToFieldConfirmNewPassword(String sString) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm New Password']")).sendKeys(sString);
    }

    @Then("DS click on change button")
    public void dsClickOnChangeButton() {getDriver().findElement(By.xpath("//span[text()='Change']/..")).click();
    }

    @Then("DS click on log out button")
    public void dsClickOnLogOutButton() {
        getDriver().findElement(By.xpath("//mat-list-item[@class='mat-list-item']")).click();
    }

    @Then("DS click on confirm log out button")
    public void dsClickOnConfirmLogOutButton() {
        getDriver().findElement(By.xpath("//span[text()='Log Out']")).click();
    }

    @Then("DS see login page")
    public void dsSeeLoginPage() {
        assertThat(
                getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).isDisplayed()
        ).isTrue();
    }

    @Then("I type {string} into element with xpath {string} and it's masked")
    public void iTypeIntoElementWithXpathAndItSMasked(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
        assertThat(
                getDriver().findElement(By.xpath(xpath)).getAttribute("type")
        ).isEqualTo("password");
    }
}







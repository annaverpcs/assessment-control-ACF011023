# Author : Milan Tiwari
  #Exercise for ASK application
@askapplication
Feature: Ask application

  Background:
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then I type "milan.teacher@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for 1 sec
    Then I should see page title as "Assessment Control @ Portnov"
    Then element with xpath "//h3[contains(text(),'Milan Tiwari')]" should contain text "Milan Tiwari"


  @askapplication2
  Scenario: Create New Quiz
    Then I click on element using JavaScript with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 1 sec
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Create New Quiz')]"
    Then I wait for 1 sec
    Then I type "0 Milan Quiz Title" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element using JavaScript with xpath "//mat-icon[contains(text(),'add_circle')]"
    Then element with xpath "//mat-panel-title[contains(text(),'Q1: new empty question')]" should be displayed
    Then I click on element using JavaScript with xpath "//div[contains(text(),'Single-Choice')] "
    Then I wait for 5 sec
    Then I type "Single choice question?" into element with xpath "//textarea[@formcontrolname='question'] "
    Then I wait for 5 sec
    Then I type "This is answer" into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I wait for 5 sec
    Then I type "This is incorrect answer" into element with xpath "//textarea[@placeholder='Option 2*']"
    Then I wait for 5 sec
    Then I click on element using JavaScript with xpath "//mat-radio-button[@class='mat-radio-button mat-accent']"
    Then I wait for 5 sec
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then I wait for 10 sec
    Then element with xpath "//mat-panel-title[contains(text(),'0 Milan Quiz Title')]" should be displayed
    Then I click on element using JavaScript with xpath "//mat-panel-title[contains(text(),'0 Milan Quiz Title')]"
    Then I click on element using JavaScript with xpath "//mat-panel-title[contains(text(),'0 Milan Quiz Title')]/../../..//span[contains(text(),'Delete')]"



# Author Roman Tsernosev
  # Exercise for ASK application


@askapplication
Feature: ASK application

   # Login to ASK as Teacher
  Background:
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then I type "5813@marimas.tech" into element with xpath "//input[@placeholder='Email *']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type = 'submit']"
    Then I wait for 1 sec
    Then I should see page title as "Assessment Control @ Portnov"
    Then element with xpath "//footer[contains(text(),'Portnov')]" should contain text "Assessment Control @ Portnov"
    Then element with xpath "//footer[contains(text(),'Portnov')]" should be displayed

  @askapplication1
  Scenario: Create a single-choice showstopper quiz
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    Then I wait for 2 sec
    Then I type "000 R.T sin-cho showstop Quiz" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    Then element with xpath "//mat-panel-title[contains(text(),'Q1: new empty question')]" should be displayed
    Then I click on element with xpath "//div[contains(text(),'Single-Choice')]"
    Then I type "Question 1 Single-choice showstopper" into element with xpath "//textarea[@formcontrolname ='question']"
    Then I type "Answer 1" into element with xpath "//textarea[@placeholder ='Option 1*']"
    Then I type "Answer 2" into element with xpath "//textarea[@placeholder ='Option 2*']"
    Then I click on element with xpath "//mat-radio-button[@id='mat-radio-8']"
    # adding "Show-stopper" question option
    #Then I click on element with xpath "//mat-checkbox[@id='mat-checkbox-2']//div[@class='mat-checkbox-frame']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'000 R.T sin-cho showstop Quiz')]" should contain text "000 R.T sin-cho showstop Quiz"
      # delete the quiz
    When I click on element with xpath "//mat-panel-title[contains(text(),'000 R.T sin-cho showstop Quiz')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'000 R.T sin-cho showstop Quiz')]/../../..//span[contains(text(),'Delete')]"
    Then I click on element with xpath "//div[@mat-dialog-actions]//span[contains(text(),'Delete')]"
    Then I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'AA1 R.T sin-cho showstop Quiz')]" should not be present
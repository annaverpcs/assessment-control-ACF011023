#Author: Anna Verkhovskaya
#Exercise for ASK application
  
  @askapplication 
  Feature: ASK application
    
   #Login to ASK as Teacher
    Background:
      Given I open url "http://ask-internship.portnov.com/#/login"
      Then I type "annapcsteacher2@gmail.com" into element with xpath "//input[@placeholder='Email *']"
      Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type = 'submit']"
      Then I wait for 1 sec
      Then I should see page title as "Assessment Control @ Portnov"
      Then element with xpath "//footer[contains(text(),'Portnov')]" should contain text "Assessment Control @ Portnov"
      Then element with xpath "//footer[contains(text(),'Portnov')]" should be displayed
    @askapplication1
    Scenario: Create a quiz
      When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for 1 sec
      Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      Then I wait for 1 sec
      Then I type "0 Anna Quiz title" into element with xpath "//input[@formcontrolname='name']"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      Then element with xpath "//mat-panel-title[contains(text(),'Q1: new empty question')]" should be displayed
      Then I click on element with xpath "//div[contains(text(),'Single-Choice')]"
      Then I type "Question 1 Single choice" into element with xpath "//textarea[@formcontrolname ='question']"
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder ='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder ='Option 2*']"
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//span[contains(text(),'Save')]"
      Then I wait for 1 sec
      Then element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]" should contain text "0 Anna Quiz title"
      # delete the quiz
      When I click on element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]"
      Then I click on element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]/../../..//span[contains(text(),'Delete')]"
      Then I click on element with xpath "//div[@mat-dialog-actions]//span[contains(text(),'Delete')]"
      Then I wait for 2 sec
      Then element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]" should not be present

      Scenario: test
        Given I open url "http://ask-internship.portnov.com/#/login"
        Given AnnaV navigate url "http://ask-internship.portnov.com/#/login"


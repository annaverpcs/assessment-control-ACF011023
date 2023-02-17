#Author Diana Zuluaga
  #Git practice
  #test

  @application
  Feature: ASK APP

    #login as a teacher

    Background:
      Given I open url "http://ask-internship.portnov.com/#/login"
      Then I type "ken1491@fernet89.com" into element with xpath "//input[@placeholder='Email *']"
      Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type ='submit']"
      Then I wait for 1 sec
      Then I should see page title as "Assessment Control @ Portnov"
      Then element with xpath "//footer[contains(text(),'Portnov')]" should contain text "Assessment Control @ Portnov"
      Then element with xpath "//footer[contains(text(),'Portnov')]" should be displayed

      Scenario: Create a Quiz with textual Question
      Then element with xpath "//h5[contains(text(),'Quizzes')]" should be present
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for 2 sec
      Then element with xpath "//span[contains(text(),'Create New Quiz')]" should be present
      Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      Then I wait for 2 sec
      Then I type "0 ABCDEF" into element with xpath "//input[@formcontrolname='name']"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      Then element with xpath "//mat-panel-title[contains(text(),'Q1: new empty question')]" should be displayed
      Then I click on element with xpath "//div[contains(text(),'Textual')]"
      Then element with xpath "//textarea[@formcontrolname='question']" should be present
        Then I click on element with xpath "//textarea[@formcontrolname='question']"
        Then I type "What types of testing do you know" into element with xpath "//textarea[@formcontrolname='question']"
        Then element with xpath "//span[contains(text(), 'Show-Stopper')]" should be present
        Then I click on element with xpath "//div[@class='mat-checkbox-inner-container']"
        Then I click on element with xpath "//span[contains(text(),'Save')]"
        Then I wait for 2 sec
        Then element with xpath "//mat-panel-title[contains(text(),'0 ABCDEF')]" should contain text "0 ABCDEF"

      Scenario: Assign quiz to a Student
      Then element with xpath "//h5[contains(text(),'Assignments')]" should be present
      Then I click on element with xpath "//h5[contains(text(),'Assignments')]" 
      Then I wait for 2 sec 
      Then element with xpath "//span[contains(text(),'Create New Assignment')]" should be present
      Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
      Then element with xpath "//h4[contains(text(),'Give Assignment')]" should be present 
      Then I click on element with xpath "//div[@class='mat-select-arrow-wrapper'][1]"

"
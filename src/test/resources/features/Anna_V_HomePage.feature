#Author: Natalia Keegan
 NatK_branchACF_955
  #Exercise for ASK application

  @askapplication
  Feature: ASK application



    #Login to ask application
    @askapplication1


#      Background:
#      Given I open url "http://ask-internship.portnov.com/#/login"
#      Then I type "annapcsteacher2@gmail.com" into element with xpath "//input[@placeholder='Email *']"
#      Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
#      Then I click on element with xpath "//button[@type='submit']"
#      Then I wait for 5 sec
#      Then element with xpath "//footer[contains(text(),'Portnov')]" should contain text "Assessment Control @ Portnov"






    Scenario:Create quiz
      Given I open url "http://ask-internship.portnov.com/#/login"
      Then I type "annapcsteacher2@gmail.com" into element with xpath "//input[@placeholder='Email *']"
      Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I wait for 5 sec
      Then element with xpath "//footer[contains(text(),'Portnov')]" should contain text "Assessment Control @ Portnov"
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for 3 sec
      Then I click on element with xpath "//span[contains(text(),'New Quiz')]"
      Then I wait for 3 sec
      Then I type "0 Nat Quiz Title" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
      Then I click on element with xpath "//mat-icon[text()='add_circle']"
      Then I wait for 2 sec
      Then element with xpath "//mat-panel-title[contains(text(),'Q1: new empty question')]" should be displayed

      Then I click on element with xpath "//div[contains(text(),'Single-Choice')]"
      Then I type "Question 1 Single Choice" into element with xpath "//textarea[@formcontrolname='question']"
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//span[contains(text(),'Save')]"
      Then I wait for 3 sec
      Then element with xpath "//mat-panel-title[contains(text(),'0 Nat Quiz Title')]" should contain text "0 Nat Quiz Title"
      When I click on element with xpath "//mat-panel-title[contains(text(),'0 Nat Quiz Title')]"
      Then I click on element with xpath "//mat-panel-title[contains(text(),'0 Nat Quiz Title')]/../../..//span[contains(text(),'Delete')]"
       Then I click on element with xpath "//div[@mat-dialog-actions]//span[contains(text(),'Delete')]"
      Then I wait for 3 sec
      Then element with xpath "//mat-panel-title[contains(text(),'0 Nat Quiz Title')]" should not be present





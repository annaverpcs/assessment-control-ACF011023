#author Lusine H
  #Ask test
Feature: User's management - Student - Change User's Group

  Background:  User's management - Student - Change User's Group
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then I type "annapcsteacher2@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    Then I type "12345" into element with xpath "//input[@placeholder='Password *']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for 1 sec
    Then I should see page title as "Assessment Control @ Portnov"
    Then I click on element with xpath "(//mat-icon[contains(text(), 'group')])[2]"
    Then I wait for 1 sec
    Then element with xpath "//h4[contains(text(), 'Akshata_Test ')]" should be displayed
    Then I click on element with xpath "//h4[contains(text(), 'Akshata_Test ')]"
    Then I click on element using JavaScript with xpath "(//mat-icon[contains(text(), 'settings')]) [3]"
  Then I click on element using JavaScript with xpath "(//mat-icon[contains(text(), 'group')])[3]"
Then I wait for 2 sec
    Then element with xpath "//h1[contains(@class, 'mat-dialog-title')]" should be displayed
  Then I click on element with xpath "//input[@formcontrolname='name']"
    Then I clear element with xpath "//input[@formcontrolname='name']"

   Scenario: Not allowed white space
     Then I click on element with xpath "//h1[contains(@class, 'mat-dialog-title')]"
    Then I wait for 2 sec
  Then I type "123 df" into element with xpath "//input[@formcontrolname='name']"
  Then element with xpath "//button[@type='button'][2]" should be disabled


  Scenario: New user's group field cannot be blank
 Then element with xpath "//mat-error[contains(text(),'This field is required')]" should be displayed
  Then element with xpath "//mat-error[contains(text(),'This field is required')]" should contain text "This field is required"
Then element with xpath "//button[@type='button'][2]" should be disabled

    Scenario: Changing User's Group is added to the valid group successfully
      Then I click on element with xpath "//h1[contains(@class, 'mat-dialog-title')]"
      Then I wait for 2 sec
      Then I type "ACF" into element with xpath "//input[@formcontrolname='name']"
      Then I click on element using JavaScript with xpath "//button[@type='button'][2]"
    




#Author:Natalia Keegan
  #Git practice
  #test


Feature: Test cases for the Group_code field

  Background:
    Given I navigate to "ask-internship.portnov"

  @test_case
  Scenario: Load Web page and verify page details
    Then I get the page information


  @test_caseACF-177
  Scenario: User can't leave the Group_Code Field empty
    When NK click on Register Me button
    Then I wait for 3 sec
    Then error message "This field is required" should be displayed

  @test_caseACF-178
  Scenario: User can't create a Group _code using more than max. allowed characters
    When NK type "asdfgh123"to the group_field
    When NK click on Register Me button
    Then error message "Too long. Should be at least 1 to 6 characters" should be present

  @test_caseUserACF-182
  Scenario: User can't create a Group_Code using whitespaces.
    When NK type "asd 23"to the group_field
    When NK click on Register Me button
    Then I wait for 3 sec
    Then error message no white space "Whitespaces are not allowed" should be present

  @test_caseACF-174
  Scenario: User can register with allowable characters Group-Code.
    Then NK type "asd34"to the group_field
    When NK click on Register Me button
    Then field with xpath should have attribute "false" as "false"

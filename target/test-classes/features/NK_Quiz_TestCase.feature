#Author: Natalia Keegan
  #Quiz_Test_case for ASK application


@askapplicatquiz
Feature: ASK application quiz test case


  Scenario:
    Given NK navigate to url "ask-internship.portnov"
    Then NK enter "annapcsteacher2@gmail.com" into email field
    Then NK enter "12345" into password field
    Then NK click on Sign In button
    Then I wait for 5 sec
    Then NK should see text contain "Assessment Control @ Portnov 1.0.12"
    Then NK click on Quizzes field
    Then I wait for 3 sec
    Then NK click on Create New Quiz button
    Then I wait for 3 sec
    Then NK enter "0 Nat Quiz Title" into the Title Of The Quiz
    Then NK click on Add Question button
    Then I wait for 2 sec
    Then NK should see text displayed "Q1: new empty question"
    Then NK should select Single Choice question type
    Then NK enter "Question 1 Single Choice" into Question field
    Then NK enter "Answer 1" into Option a field
    Then NK enter "Answer 2" into Option b field
    Then NK click on radio button for Option a
    Then NK click on Save button
    Then I wait for 3 sec
    Then NK should see text present "0 Nat Quiz Title"
    When NK click on Quiz Title created
    Then NK click on element with xpath
    Then NK click on Delete button
    Then I wait for 3 sec
    Then NK should not see displayed Quiz Title created


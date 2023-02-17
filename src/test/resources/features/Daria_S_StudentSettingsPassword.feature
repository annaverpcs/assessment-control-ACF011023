Feature: Test set "Student: Settings - Password"
  Background:
    Given I open url "http://ask-internship.portnov.com/"
    Then I type "student3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "12345ABc" into element with xpath "//input[@type='password']"
    When I click on element with xpath "//button[@class='mat-raised-button mat-primary']"
    Then element with xpath "//mat-list[@class='mat-list']" should be present
    Then I wait for 2 sec
    When I click on element with xpath "//h5[contains(text(),'Settings')]"
    Then element with xpath "//span[text()='Change Your Password']" should be present
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then element with xpath "//mat-dialog-container[@role='dialog']" should be present
     And element with xpath "//span[text()='Change']/.." should be disabled

  Scenario: Change student password Positive with Daria Step definitions
    When I click on element with xpath "//span[text()='Cancel']/.."
    Then DS click on log out button
    Then DS click on confirm log out button
    Then I wait for 3 sec
    #ACF-228 ACF-224
    Then I wait for 2 sec
    Given DS go to "ASK" application
    Then DS see login page
    Then DS type "student3@gmail.com" to email field
    Then DS type "12345ABc" to password field
    Then DS click on sign in button
    Then DS see home page
    # ACF-224 Change password
    Then I wait for 2 sec
    Then DS go to settings
    Then DS see options to change name or password
    Then DS click on change password
    Then DS see field for typing new password
    Then DS type  "12345ABc" to field password
    Then I wait for 3 sec
    Then DS type "12345" to field new password
    Then DS type "12345" to field confirm new password
    Then DS click on change button
    Then DS see home page
    #Log Out
    Then DS click on log out button
    Then DS click on confirm log out button
    Then I wait for 5 sec
    Then DS see login page
    # ACF-230 Verify that password changed and user can login with changed password
    Then DS type "student3@gmail.com" to email field
    Then DS type "12345" to password field
    Then DS click on sign in button
    Then DS see home page
    # Change password back to previous
    Then I wait for 3 sec
    Then DS go to settings
    Then DS see options to change name or password
    Then DS click on change password
    Then DS see field for typing new password
    Then DS type  "12345" to field password
    Then DS type "12345ABc" to field new password
    Then DS type "12345ABc" to field confirm new password
    Then DS click on change button
    Then I wait for 3 sec
    Then DS see home page
    # Log Out
    Then DS click on log out button
    Then DS click on confirm log out button
    Then I wait for 5 sec
    Then DS see home page

  @ask2
  Scenario: Change student password Positive with PredefinedStepsDefs
    # ACF-224 Change password
    Then I type "12345ABc" into element with xpath "//input[@placeholder='Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='New Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Confirm New Password']"
    And element with xpath "//span[text()='Change']/.." should be enabled
    When I click on element with xpath "//span[text()='Change']/.."
    And element with xpath "//mat-list[@class='mat-list']" should be present
    #Log Out
    Then I click on element with xpath "//mat-list-item[@class='mat-list-item']"
    And I click on element with xpath "//span[text()='Log Out']"
    Then I wait for 5 sec
    Then element with xpath "//img[@class='center-logo']" should be present
    # ACF-230 Verify that password changed and user can login with changed password
    Then I type "student3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "12345" into element with xpath "//input[@type='password']"
    When I click on element with xpath "//button[@class='mat-raised-button mat-primary']"
    Then element with xpath "//mat-list[@class='mat-list']" should be present
    Then I wait for 3 sec
     # Change password back to previous
    When I click on element with xpath "//h5[contains(text(),'Settings')]"
    Then element with xpath "//span[text()='Change Your Password']" should be present
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then element with xpath "//mat-dialog-container[@role='dialog']" should be present
    And element with xpath "//span[text()='Change']/.." should be disabled
    Then I type "12345" into element with xpath "//input[@placeholder='Password']"
    Then I type "12345ABc" into element with xpath "//input[@placeholder='New Password']"
    Then I type "12345ABc" into element with xpath "//input[@placeholder='Confirm New Password']"
    When I click on element with xpath "//span[text()='Change']/.."
    Then I wait for 3 sec
    # Log Out
    Then I click on element with xpath "//mat-list-item[@class='mat-list-item']"
    And I click on element with xpath "//span[text()='Log Out']"
    Then I wait for 5 sec

  @ask3
  Scenario: User is not allowed to sign in with old password
#ACF-346
    When I click on element with xpath "//span[text()='Cancel']/.."
    Then I click on element with xpath "//mat-list-item[@class='mat-list-item']"
    And I click on element with xpath "//span[text()='Log Out']"
    Then I wait for 5 sec
    Given I open url "http://ask-internship.portnov.com/"
    Then I type "student3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "12345" into element with xpath "//input[@type='password']"
    When I click on element with xpath "//button[@class='mat-raised-button mat-primary']"
    Then element with xpath "//div[@class='cdk-visually-hidden']" should be present

  Scenario: User can not change password with invalid current password
    # ACF-224 Change password
    Then I type "12345" into element with xpath "//input[@placeholder='Password']"
    Then I type "123456" into element with xpath "//input[@placeholder='New Password']"
    Then I type "123456" into element with xpath "//input[@placeholder='Confirm New Password']"
    And element with xpath "//span[text()='Change']/.." should be enabled
    When I click on element with xpath "//span[text()='Change']/.."
    Then element with xpath "//div[@class='cdk-visually-hidden']" should be present

    Scenario: Password is masked
      #ACF-241 #ACF-242 #ACF-243
      Then I type "12345" into element with xpath "//input[@placeholder='Password']" and it's masked
      Then I type "12345" into element with xpath "//input[@placeholder='New Password']" and it's masked
      Then I type "12345" into element with xpath "//input[@placeholder='Confirm New Password']" and it's masked


  Scenario: Password must match Confirm Password
      #ACF-238
    Then I type "12345ABc" into element with xpath "//input[@placeholder='Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='New Password']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Confirm New Password']"
    When I click on element with xpath "//span[text()='Change']/.."
    Then element with xpath "//mat-error[contains(text(),'Entered passwords should match')]" should be present

  Scenario: Button “cancel” works and user is able to get back on Home Page
        #ACF-239
    When I click on element with xpath "//span[text()='Cancel']/.."
    Then element with xpath "//mat-list[@class='mat-list']" should be displayed

  Scenario: "Password", "New Password", "Confirm New Password" fields are required - cannot be empty
          #ACF-231, ACF-232, ACF-234
    Then I wait for 3 sec
    And I click on element with xpath "//input[@placeholder='New Password']"
    Then I wait for element with xpath "//div[@class='mat-dialog-content']/mat-form-field[1]/div[1]/div[3]/div[1]/mat-error[1]" to be present
    And I click on element with xpath "//input[@placeholder='Confirm New Password']"
    Then I wait for element with xpath "//div[@class='mat-dialog-content']/mat-form-field[2]/div[1]/div[3]/div[1]/mat-error[1]" to be present
    And I click on element with xpath "//span[text()='Change']/.."
    Then  I wait for element with xpath "//div[@class='mat-dialog-content']/mat-form-field[3]/div[1]/div[3]/div[1]/mat-error[1]" to be present
#ACF-259 ACF-260 ACF-261 ACF-262 ACF-263 ACF-264 ACF-265 ACF-266 ACF-267
  Scenario Outline: Verify that min 5 , max 32, whitespaces are not allowed in the field "Password"
    Then I type "<Password>" into element with xpath "//input[@placeholder='Password']"
    When I click on element with xpath "//span[text()='Change']/.."
    Then element with xpath "//div[@class='mat-dialog-content']/mat-form-field[1]/div[1]/div[3]/div[1]/mat-error[1]" should be present
    Examples:
      | Password                          |
      | 1234                              |
      | 123456789012345678901234567890123 |
      |                                   |

  Scenario Outline: Verify that min 5 , max 32, whitespaces are not allowed in the field "New Password"
    Then I type "<New Password>" into element with xpath "//input[@placeholder='New Password']"
    When I click on element with xpath "//span[text()='Change']/.."
    Then element with xpath "//div[@class='mat-dialog-content']/mat-form-field[2]/div[1]/div[3]/div[1]/mat-error[1]" should be present
    Examples:
      | New Password                      |
      | 1234                              |
      | 123456789012345678901234567890123 |
      |                                   |

  Scenario Outline: Verify that min 5 , max 32, whitespaces are not allowed in the field "Confirm New Password"
    Then I type "<Confirm New Password>" into element with xpath "//input[@placeholder='Confirm New Password']"
    When I click on element with xpath "//span[text()='Change']/.."
    Then element with xpath "//div[@class='mat-dialog-content']/mat-form-field[3]/div[1]/div[3]/div[1]/mat-error[1]" should be present
    Examples:
      | Confirm New Password              |
      | 1234                              |
      | 123456789012345678901234567890123 |
      |                                   |
# ACF-269 ACF-270 ACF-271
  Scenario: Alphanumeric and special characters are allowed in all password fields
    When  I type "Aa12$" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='New Password']"
    Then element with xpath "//div[@class='mat-dialog-content']/mat-form-field[1]/div[1]/div[3]/div[1]/mat-error[1]" should not be present
    When  I type "Aa12$" into element with xpath "//input[@placeholder='New Password']"
    And I click on element with xpath "//input[@placeholder='Confirm New Password']"
    Then element with xpath "//div[@class='mat-dialog-content']/mat-form-field[2]/div[1]/div[3]/div[1]/mat-error[1]" should not be present
    When  I type "Aa12$" into element with xpath "//input[@placeholder='Confirm New Password']"
    And I click on element with xpath "//input[@placeholder='New Password']"
    Then element with xpath "//div[@class='mat-dialog-content']/mat-form-field[3]/div[1]/div[3]/div[1]/mat-error[1]" should not be present


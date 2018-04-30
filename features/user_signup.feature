@doctalk_home_page
Feature: As a end user
I should be able open signin pop up window
and I should able to signup 

@user_signup
Scenario:Super_user_signup
Given I am in doctalk home page
When I click on signup button
Then I should able to see the signup pop up

@signup_invalid_entry_fields
Scenario:Enter_invalid_data
Given I am in signup popup window
When I click on OK button without entering the fileds
Then I should see error notifications they have been highlighted in pop up window

@signup_invalid_name
Scenario:Name_field_validation
Given I am in signup popup window
When I entered digits in name field
Then I should see error "Should contain only alphabets!"

@signup_invalid_email
Scenario:Email_field_validation
Given I am in signup popup window
When I entered invalid email address 
Then I should see the email error "Please enter a valid E-Mail address!"

@signup_invalid_password
Scenario:Password_field_validation
Given I am in signup popup window
When I entered less than 6 character for password filed
Then I should see the password error "Enter minimum 6 characters!"

@signup_invalid_confirm_password
Scenario:Confirm_password_field_validation
Given I am in signup popup window
When I entered different password
Then I should see confirm password error "Password does not match"

@invalid_login
Scenario:Super_user_login
Given I am in doctalk home page
When I click on login button
Then I should able to see the login pop up

@invalid_login_entry_fields
Scenario:Enter_invalid_login_data
Given I am in login popup window
When I click on submit button without entering the fileds
Then I should see error message they have been highlighted in pop up window

@invalid_login_email
Scenario:Enter_invalid_login_email
Given I am in login popup window
When I entered credentials with invalid email
Then I should see error message as "Incorrect E-Mail or Password"

@manage_admin
Feature: As a end user
I should be able open manage admin dashboard
and I should able create the new admin.4

@super_admin
Scenario:Super_admin_login
Given I am in docdock home page
When I enter valid user name and password And click signin
Then I should able to login sucessfully

@manage_admin_dashboard
Scenario:Super_admin_dashboard
Given I am in home_dashboard
When I click on manage admin button
Then I should see Manage_Admin page

@new_admin_dashboard
Scenario:Super_new_admin_dashboard
Given I am in manage_admin_dashboard
When I click on new_admin button
Then I should see Create-ADMIN-popup

@manage_admin_invalid
Scenario:Create-admin_with_out_entering_the_fields
Given I am in create_admin pop-up window
When I click on create-admin with out entering the fields button
Then I should see error You missed 5 fields They have been highlighted in pop up window

@new_admin_dashboard
Scenario:Super_new_admin_dashboard
Given I am in manage_admin_dashboard
When I click on new_admin button
Then I should see Create-ADMIN-popup

@manage_admin_valid
Scenario:Create_admin_valid
Given I am in create_admin_dashboard
When I entered valid data for all fileds and click create-admin button
Then I should see succesfully created New admin in manage_admin dashboard

@new_admin_dashboard
Scenario:Super_new_admin_dashboard
Given I am in manage_admin_dashboard
When I click on new_admin button
Then I should see Create-ADMIN-popup

@manage_admin_invaild1_username
Scenario:Write_admin_invalid1_username
Given I am in create_admin pop-up window
When I entered invalied data in respective fields and click create-admin button
Then I should see error "Please enter atleast 6 characters"

# @manage_admin_existing_username
# Scenario:
# Given I am in create_admin pop-up window
# When I entered existing-username in username filed and click create-admin button
# And I entered valid data for remaining fileds and click create-admin button
# Then I should see error "Username already exists!."

# @manage_admin_invalid_password
# Scenario:
# Given I am in create_admin pop-up window 
# When I input invalid_password in the password field and click create-admin button
# Then I should see error "Password should have atleast one uppercase, one lowercase, 1 number and 1 special character."

# @manage_admin_invalid_retype_password
# Scenario:
# Given I am in create_admin pop-up window
# When I input invalid_retype password in the retype password field and click create-admin button
# Then I should see error "Doesn't match with the password."

#  @manage_admin_invalid_email
#  Scenario:
#  Given I am in create_admin pop-up window 
#  When I input invalid_email in the email field and click create-admin button.
#  Then I should see error "Please enter a valid email address."
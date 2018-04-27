# Given(/^I am on demoqa home page$/) do
# @browser.navigate.to "http://demoqa.com/"
# end

Given("I am in docdock home page") do
  @browser.navigate.to "http://test-docdock.qwinix.io/admin/sign_in"
end

When("I enter valid user name and password And click signin") do
  sleep 2
  @browser.find_element(name: "login_handle").send_keys "darshan"
  sleep 2
  @browser.find_element(id: "sign_in_password").send_keys "Admin123!"
  sleep 2
  @browser.find_element(name: "commit").click
end

Then("I should able to login sucessfully") do
  sleep 2
  @browser.find_element(xpath: "//a[@href='/admin/admin_users']").displayed?
  
end

Given("I am in home_dashboard") do
  sleep 2
  @browser.find_element(xpath: "//a[@href='/admin/admin_users']").displayed?
  sleep 2
end

When("I click on manage admin button") do
  sleep 2
  @browser.find_element(xpath: "//a[@href='/admin/admin_users']").click
end

Then("I should see Manage_Admin page") do
  sleep 2
  @browser.find_element(xpath: "//a[@href='/admin/admin_users']").displayed?
end

Given("I am in manage_admin_dashboard") do
  sleep 2
  @browser.find_element(xpath: "//a[@href='/admin/admin_users']").displayed?
end

When("I click on new_admin button") do
  sleep 2
  @browser.find_element(xpath: "//a[@href='/admin/admin_users/new']").click
end

Then("I should see Create-ADMIN-popup.") do
  sleep 2
  @browser.find_element(id: "inp_name").displayed?
end

Given("I am in create_admin pop-up window") do
  sleep 2
  @browser.find_element(id: "inp_name").displayed?
end

When("I click on create-admin with out entering the fields button") do
  @browser.find_element(name: "commit").click
end

Then("I should see error You missed {int} fields They have been highlighted in pop up window") do |int|
  @browser.find_element(xpath: ".//*[@id='div_modal_generic']/div").displayed?
  sleep 2
  @browser.find_element(xpath: ".//*[@id='div_modal_generic']/div/div/div[1]/button").click
  sleep 2
  @browser.find_element(xpath: "//a[@href='/admin/admin_users']").displayed?
  sleep 2
end

Given("I am in create_admin_dashboard") do
 @browser.find_element(id: "inp_name").displayed?
end

When("I entered valid data for all fileds and click create-admin button") do
   sleep 2
  @browser.find_element(id: "inp_name").send_keys "brunda"
  sleep 2
  @browser.find_element(id:"inp_username").send_keys "brunda" 
  sleep 2
  @browser.find_element(id:"inp_email").send_keys "darshu3232@outlook.com" 
  sleep 2
  @browser.find_element(id:"inp_password").send_keys "Qwerty@123" 
  sleep 2 
  @browser.find_element(id:"inp_retype_password").send_keys "Qwerty@123"
  sleep 2
  @browser.find_element(xpath: ".//*[@id='form_admin_user']/div[3]/div/input").click
  sleep 4
end

Then("I should see succesfully created New admin in manage_admin dashboard") do
 sleep 2
 @browser.find_element(xpath: "//a[@href='/admin/admin_users']").displayed?
 sleep 4
end


When("I entered invalied data in respective fields and click create-admin button") do
  sleep 2
  @browser.find_element(id: "inp_name").displayed?
  sleep 2
  @browser.find_element(id: "inp_name").send_keys "s"
  sleep 2
  @browser.find_element(id:"inp_username").send_keys "bru" 
  sleep 2
  @browser.find_element(id:"inp_email").send_keys "brundaoutlook.com" 
  sleep 2
  @browser.find_element(id:"inp_password").send_keys "Qwert" 
  sleep 2 
  @browser.find_element(id:"inp_retype_password").send_keys "Qwert134"
  sleep 2
  @browser.find_element(xpath: ".//*[@id='form_admin_user']/div[3]/div/input").click
  sleep 4
end

Then("I should see error {string}") do |string|
  sleep 2
  @browser.find_element(text:"Please enter at least 2 characters.").displayed?
  sleep 2
end




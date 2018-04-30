Given("I am in doctalk home page") do
  @browser.navigate.to "https://doctalkweb.herokuapp.com/"
end

When("I click on signup button") do
  sleep 2
  @browser.find_element(xpath: "//div[2]/ul/li[1]/form/input").click
  sleep 5
end

Then("I should able to see the signup pop up") do
  sleep 2
  @browser.find_element(name: 'commit').displayed?
  sleep 2
end

Given("I am in signup popup window") do
  sleep 2
  @browser.find_element(name: 'commit').displayed?
  sleep 2
end

When("I click on OK button without entering the fileds") do
  sleep 2
  @browser.find_element(name: 'commit').click
  sleep 2
end

Then("I should see error notifications they have been highlighted in pop up window") do
  sleep 2
  @browser.find_element(id: 'user_name-error').displayed?
  sleep 2
end

When("I entered digits in name field") do
  sleep 2
  @browser.find_element(id: 'user_name').send_keys "324"
  sleep 2
end

Then("I should see error {string}") do |string|
  sleep 2
  a = @browser.find_element(id: 'user_name-error').text
  if  a.include? "Should contain only alphabets!"
    puts "#{a}"
  end
end

When("I entered invalid email address") do
  sleep 2
  @browser.find_element(id: 'user_email').send_keys "gdgy.com"
  sleep 2
end

Then("I should see the email error {string}") do |email|
  sleep 2
  b = @browser.find_element(id: 'user_email-error').text
  if  b.include? "Please enter a valid E-Mail address!"
    puts "#{b}"
  end
end

When("I entered less than {int} character for password filed") do |int|
  sleep 2
  @browser.find_element(id: 'user_password').send_keys "817"
  sleep 2
end

Then("I should see the password error {string}") do |password|
  sleep 2
  c = @browser.find_element(id: 'user_password-error').text
  if  c.include? "Enter minimum 6 characters!"
    puts "#{c}"
  end
end

When("I entered different password") do
  sleep 2
  @browser.find_element(id: 'user_password_confirmation').send_keys "hgf"
  sleep 2
end

Then("I should see confirm password error {string}") do |repeat_pass|
  sleep 2
  d = @browser.find_element(id: 'user_password_confirmation-error').text
  if  d.include? "Password does not match"
    puts "#{d}"
  end
end

When("I click on login button") do
  sleep 2
  @browser.find_element(xpath: "//div[2]/ul/li[2]/form/input").click
  sleep 2
end

Then("I should able to see the login pop up") do
  sleep 2
  @browser.find_element(name: 'commit').displayed?
  sleep 2
end

Given("I am in login popup window") do
  sleep 2
  @browser.find_element(name: 'commit').displayed?
  sleep 2
end

When("I click on submit button without entering the fileds") do
  sleep 2
  @browser.find_element(name: 'commit').click
  sleep 2
end

Then("I should see error message they have been highlighted in pop up window") do
  sleep 2
  @browser.find_element(id: 'inputUsername-error').displayed?
  sleep 2
end

When("I entered credentials with invalid email") do
  sleep 2
  @browser.find_element(id: 'inputUsername').send_keys "gdbshdgs@com"
  sleep 2
  @browser.find_element(id: 'inputPassword').send_keys "123456"
  sleep 2
  @browser.find_element(name: 'commit').click
  sleep 2

end

Then("I should see error message as {string}") do |invalid_login|
  sleep 2
  e = @browser.find_element(xpath: "//*[@id='flash']/div").text
  if  e.include? "Incorrect E-Mail or Password"
    puts "#{e}"
  end
end


Given /^I am going to login page$/ do
  browser.goto('dev-my.allego.com')

end


Then(/^I am  logging in with: "(.*)"$/) do |login|
  page(LoginPage).login(login, Creds.get_password(login))
end

And(/^I check if I am Successful$/) do
  browser.element(xpath:"//div[@class='main-toolbar']").wait_until(&:present?)
end
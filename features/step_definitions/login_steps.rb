Given /^I am on Login page$/ do
  browser.goto('dev-my.allego.com/')
  page(Header).logout_if_logged_in
end


Then(/^I log in as "(.*)"$/) do |login|
  page(LoginPage).log_in(login)
end

Then(/^I logout$/) do
  page(Header).logout
end
And /^I open "(.*)" page$/ do |page|
  case page
  when 'Manage Collections'
    page(Header).open_manage_collections
  when 'Home'
    browser.goto('dev-my.allego.com/home.do')
  when 'MyOpenTasks'
    browser.goto('dev-my.allego.com/home.do?tasks&viewId=-1')
  when 'MyCompletedTasks'
    browser.goto('dev-my.allego.com/home.do?tasks&viewId=-2')

  else
    raise "There`s no such page: '#{page}'"
  end
end


Then(/^I navigate to (.*)$/) do |location|
  case location
  when 'My Content'
    browser.goto('dev-my.allego.com/home.do?channelId=-2')
  else
    raise "#{location} does not exist or incorrect"
  end

end
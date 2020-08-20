Then(/^I open menu$/) do
  page(OptionMenu).open_menu
end

And(/^Click create new SmartEx$/) do
  page(OptionMenu).create_smart_ex
end

Then(/^I change SmartEx description$/) do
  page(SmartExProperties).change_description
end

And(/^Set replies goes to: Me$/) do
  a = ['excreator2.qa@dev']
  page(SmartExProperties).replies_go_to(a)
end

And(/^I click record message$/) do
  page(SmartExProperties).record_message
end

And(/^I wait for Assign key to be available and assign$/) do
  page(VideoRecording).wait_for_assign
end

Then(/^I click Assign and assign the video$/) do
  page(VideoRecording).assign_video
  sleep 10
end

And(/^I choose assignee$/) do
  b = browser
  b.element(css: '#share_action_people').click
  b.element(css: '#set_properties_recipients_chosen').click
  b.element(xpath: "//ul[@class='chosen-choices']/li[@class='search-field default']/input[@value='Select recipients']").send_keys('exassigneenew.qa@dev')
  # sleep 2.0
  # PROBLEM HERE how to wait_until(&:present?). It`s searching for listed assignee ~time`
  # //span[contains(., 'exassigneenew.qa@dev')]//ancestor::div[@class='chosen-drop']

  b.element(xpath: "//span[contains(., 'exassigneenew.qa@dev')]//ancestor::div[@class='chosen-drop']").wait_until(&:present?)
    sleep 2
  b.element(xpath: "//span[contains(., 'exassigneenew.qa@dev')]//ancestor::div[@class='chosen-drop']").click

  # wait to share
  b.wait_until(timeout: 30) { b.element(css: '#assignment_properties_form_scroller').present? }
  b.element(css: '#share_assignment_properties').click

  # wait to be shure vido is assigned
  b.wait_until(timeout: 30) { !b.element(css: '#assignment_properties_form_scroller').present? }
end

And(/^I record a video$/) do
  page(VideoRecording).record_video
end
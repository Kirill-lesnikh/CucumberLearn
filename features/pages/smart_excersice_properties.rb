require 'watir'
require_relative 'video_recording'

class SmartExProperties < VideoRecording

  def change_description
    element = browser.element(css: "#set_properties_title")
    element.click
    element.send_keys([:control, 'a'], :backspace)
    element.send_keys($task_name)
    browser.element(css: "#set_properties_description").send_keys("Some description")
  end

  def replies_go_to(recipients)
    element = browser.element(xpath: "//div[@id='set_assignment_recipients_chosen']//li[@class='search-field']")
    for i in recipients
      sleep 1
      element.click
      browser.element(xpath:"//*[@class='chosen-search-input']").send_keys(i)
      browser.element(xpath: "//ul[@class='chosen-results']//span[contains(., '#{i}')]/..").click
    end
  end

  def record_message
    browser.element(css: '#record_assignment').click
  end
end

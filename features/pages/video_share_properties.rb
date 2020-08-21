class VideoShareProperties < BasePage

  # Elements

  def scroller
    browser.element(css:"#sharing_properties_form_scroller")
  end

  def input_title
    browser.element(css:"#set_properties_title")
  end

  def input_description
    browser.element(css:"#set_properties_description")
  end

  def btn_share_channels
    browser.element(css:"#share_action_channels")
  end

  def btn_share_users
    browser.element(css:"#share_action_people")
  end

  # Methods

  def set_title(arg = nil)
    input_title.click
    input_title.send_keys([:control, 'a'], :backspace)
    input_title.send_keys("#{arg} #{ENV['VIDEO_NAME']}")
  end

  def set_description(arg = nil)
    input_description.click
    input_description.send_keys("#{arg}#{ENV['DESCRIPTION']}")
  end

  def share_channels
    btn_share_channels.click
  end

end

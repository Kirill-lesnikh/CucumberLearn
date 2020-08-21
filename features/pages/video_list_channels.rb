require_relative 'video_share_properties'
class VideoListChannels < VideoShareProperties

  # Elements

  def search_field
    browser.element(xpath:"//div[@id='set_channels_chosen']")
  end
  def input_search_field
    browser.element(xpath:"//div[@id='set_channels_chosen']//li[contains(@class, 'search-field')]/input")
  end

  def chosen_channel
    browser.element(xpath:"//div[@id='set_channels_chosen']//div[@class='chosen-drop']//li[contains(.,'#{ENV['COURSE_NAME']}')]")
  end

  def btn_share
    browser.element(css:"#share_sharing_properties_form")
  end



  # Methods

  def choose_channel_to_share
    search_field.click
    input_search_field.send_keys(ENV['COURSE_NAME'])
    chosen_channel.click
  end

  def share
    btn_share.click
    browser.wait_until{!scroller.present?}
  end
end

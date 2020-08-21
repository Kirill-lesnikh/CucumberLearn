require_relative 'video_list_channels'
class MyContent < VideoListChannels

  # Elements

  def btn_edit_properties
    browser.element(xpath:"//ul[contains(@class, 'allego-index-menu')]//span[contains(., 'Edit properties')]/..")
  end

  def btn_make_a_copy
    browser.element(xpath:"//ul[contains(@class, 'allego-index-menu')]//span[contains(., 'Make a copy')]/..")
  end

  def btn_list_in
    browser.element(xpath:"//ul[contains(@class, 'allego-index-menu')]//span[contains(., 'List in')]/..")
  end

  def created_video
    browser.element(xpath:"//span[@class='item-title' and contains(., '#{ENV['VIDEO_NAME']}')]/..")
  end

  def video_by_id
    browser.element(xpath:"//div[@data-id='#{@video_id}']")
  end

  # Methods

  def get_video_id(video = created_video)
    video.attribute_value('data-id')
  end

  def copy_video
    @video_id = get_video_id
    created_video.click
    btn_make_a_copy.click
    # TODO do i need this sleep?
    sleep 1
    browser.refresh
  end

  # TODO - refactor this godzilla. Change method i use to choose copied video
  def choose_rename_and_make_a_copy
    copy_video
    browser.wait_until{browser.elements(xpath:"//span[@class='item-title' and contains(., '#{ENV['VIDEO_NAME']}')]/..").size > 1}
    elements = browser.elements(xpath:"//span[@class='item-title' and contains(., '#{ENV['VIDEO_NAME']}')]/..")
    for i in elements.to_a
      if get_video_id(i) != @video_id
        @video_id = get_video_id(i)
        i.click
        btn_edit_properties.click
        set_description('copy ')
        set_title('copy ')
        share_channels
        choose_channel_to_share
        share
        break
      end
    end
  end


end

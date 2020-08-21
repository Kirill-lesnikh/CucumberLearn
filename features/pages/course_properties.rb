class CourseProperties #< ManageCollections

  # Elements

  def input_title
    browser.element(css:"#ch_properties_title")
  end

  def input_description
    browser.element(css:"#ch_properties_description")
  end

  def search_field
    browser.element(xpath:"//div[@id='ch_viewers_chosen']//li[contains(@class, 'search-field')]")
  end

  def input_search_field
    browser.element(xpath:"//div[@id='ch_viewers_chosen']/ul/li/input")
  end

  def btn_share_with_users
    browser.element(css:"#share_action_people")
  end

  def btn_share
    browser.element(css:"#share_channel_properties_form")
  end

  def scroller
    browser.element(xpath:"//div[@id='channel_properties_form_scroller']")
  end

  # Methods

  def set_title
    input_title.click
    input_title.send_keys(ENV['COURSE_NAME'])
  end

  def set_description
    input_description.click
    input_description.send_keys(ENV['DESCRIPTION'])
  end

  def share_with_users
    btn_share_with_users.click
  end

  def set_assignee(assignee)
    search_field.click
    input_search_field.send_keys(assignee)
    browser.element(xpath:"//li[contains(., '#{assignee}')]").click
  end

  def share
    btn_share.click
    browser.wait_until{!scroller.present?}
  end
end

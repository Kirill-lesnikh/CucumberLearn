class Header < BasePage

  # Elements

  def header
    browser.element(xpath:"//div[@class='external-toolbar']")
  end
  def header_topic(topic)
    browser.element(xpath:"body/div[@class='index-header' and contains(., '#{topic}')]")
  end

  #TODO there are 3 different options btns on the site, make single method that opens options
  def btn_options
    browser.element(css:"#main_options_button")
  end

  def btn_external_options
    browser.element(css:"#external_options_button")
  end
  #================================

  def btn_options_new_recording
    browser.element(css:"#context_menu_icon_new_recording", visible: true)
  end

  def btn_options_my_account
    browser.element(xpath:"//li[contains(@class, 'my-account')]", visible: true)
  end

  def btn_options_my_account_sign_out
    browser.element(xpath:"//li[contains(@class, 'account-logout')]", visible: true)
  end

  def btn_options_manage_collections
    browser.element(xpath:"//li[contains(@class, 'manage-collections')]")
  end

  # Methods

  def open_menu
    if btn_options.present?
      btn_options.wait_until(&:enabled?).click
    else
      btn_external_options.wait_until(&:enabled?).click
    end
  end

  def logout
    open_menu
    btn_options_my_account.click
    btn_options_my_account_sign_out.click
  end


  def logout_if_logged_in
    if header.present? #== true
      puts 'I was logged in, logging out.'
      logout

    else
      puts 'I was not logged in, logging in.'
    end
  end

  def open_manage_collections
    open_menu
    btn_options_manage_collections.click
  end

  def record_new_video
    btn_options_new_recording.click
  end

end

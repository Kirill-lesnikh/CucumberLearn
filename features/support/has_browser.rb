module HasBrowser

  def browser
    $new_browser
  end

  def page(cls)
    cls.new
  end

  def start_browser_session
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile['media.navigator.permission.disabled'] = true
    profile['media.navigator.streams.fake'] = true

    # Starting a new browser
    $new_browser = Watir::Browser.new :firefox, :profile => profile
  end

  def change_tab
    browser.windows.last.use
  end

  def get_browser_windows_size
    browser.windows.size
  end
end
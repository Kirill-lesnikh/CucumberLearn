class HomePage

  def goto_home_page
    browser.goto("dev-my.allego.com/home.do")
  end

  def see_all_tasks
    browser.element(css:"#tfmseeall").wait_until(&:present?).click
  end

  def home_page_label
    browser.element(xpath:"//div//h1[text()='Home']")
  end

  def im_on_home_page?

  end
end

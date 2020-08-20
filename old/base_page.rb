require 'watir'

class BasePage

  def open_menu
    browser.element(css: "#main_options_button", visible: true).wait_until(&:enabled?).click
  end

  def new_smart_ex
    open_menu
    browser.element(css:"#context_menu_icon_new_smart_exercise").click
  end

end

class OptionMenu

  def menu_btn
    browser.element(css: "#main_options_button", visible: true)
  end

  def create_smart_ex_btn
    browser.element(css:"#context_menu_icon_new_smart_exercise")
  end

  def open_menu
    menu_btn.wait_until(&:enabled?).click
  end

  def create_smart_ex
    create_smart_ex_btn.wait_until(&:enabled?).click
  end



end

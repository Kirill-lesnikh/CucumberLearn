class VideoPlayer

  # Elements
  def btn_play
    browser.element(xpath:"//a[@title='Play']")
  end

  def btn_pause
    browser.element(xpath:"//a[@class='clickable paused']")
  end

  def btn_forward_ten_s
    browser.element(xpath:"//a[@title='Forward 10 seconds']")
  end

  def btn_exit
    browser.element(css:"#ctb_exit")
  end

  def btn_continue
    browser.element(css:"#suggested_action_continue")
  end

  def viewed_status
    browser.element(css:"#pcs_pctviewed")
  end

  # Methods

  #TODO - test this method
  def play
    browser.wait_until{btn_play.present? or btn_pause.present?}
    if btn_play.present?
      btn_play.click
    end
  end

  def contonue
    btn_continue.click
  end

  def exit
    btn_exit.click
  end





end

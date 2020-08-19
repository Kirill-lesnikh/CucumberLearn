# require_relative '../../config/creds'

class LoginPage < AllPages

  def login_field
    browser.element(css: "#login")
  end

  def password_field
    browser.element(css: "#password")
  end

  def login_sign_btn
    browser.element(css:"#login_submit")
  end

  def wait_for_sign
    browser.wait_until(timeout: 30){!login_sign_btn.attribute('class').include?('disabled')}
  end

  def goto_login_page
    browser.goto('dev-my.allego.com/')
  end

  def login(login, password)
    goto_login_page
    login_field.send_keys(login)
    sleep 0.5
    password_field.send_keys(password)
    wait_for_sign
    login_sign_btn.click
  end

  def call_ancestor
    putsmth
  end

end

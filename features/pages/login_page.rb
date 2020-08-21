require_relative 'base_page'
class LoginPage < BasePage

  # Objects on page
  def input_login
    browser.element(css:"#login")
  end

  def input_password
    browser.element(css:"#password")
  end

  def btn_sign_in
    browser.element(css:"#login_submit")
  end

  # Methods
  def wait_for_btn_sign_active
    browser.wait_until(timeout: 20){!btn_sign_in.attribute('class').include?('disabled')}
  end

  def sign_in
    btn_sign_in.click
  end

  def log_in (login)
    input_login.click
    case login
    when 'creator'
      input_login.send_keys('excreator2.qa@dev')
      input_password.send_keys('qa2013')

    when 'assignee'
      input_login.send_keys('exassigneenew.qa@dev')
      input_password.send_keys('qa2013')

      else
        raise "There is no user: '#{login}'"
    end
    wait_for_btn_sign_active
    btn_sign_in.click
  end
end

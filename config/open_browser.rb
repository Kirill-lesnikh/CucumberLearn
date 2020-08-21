require '../features/support/has_browser'
require 'watir'
require_relative '../features/pages/login_page'
require_relative '../features/pages/base_page'

include HasBrowser
a = BasePage.new
b = LoginPage.new
start_browser_session
$new_browser.goto('dev-my.allego.com/')
b.log_in('creator')
z = gets




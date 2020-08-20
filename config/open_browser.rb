require '../features/support/has_browser'
require 'watir'

include HasBrowser

start_browser_session
$new_browser.goto('dev-my.allego.com/')
z = gets




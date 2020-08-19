require_relative '../../config/creds'

class AssignVideoReply
  require 'watir'

  # assign assignees video reply
  def assign_reply
    browser.wait_until(timeout: 30){browser.element(css:"#camera_review_action_handin").present?}
    browser.wait_until(timeout: 120){!browser.element(css:"#camera_review_action_handin").attribute('class').include?('disabled')}
    browser.element(css:"#camera_review_action_handin").click
    browser.element(css: "#share_sharing_properties_form").click
    browser.wait_until(timeout: 30){!browser.element(css:"#sharing_properties_form_scroller").present?}
  end
end

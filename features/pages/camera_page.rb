class CameraPage < BasePage

  # Elements

  def scroller
    browser.element(css:"#camera_preview_scroller")
  end

  def btn_record
    browser.element(css:"#btn_webcam_record")
  end

  def btn_stop
    browser.element(css:"#webcam_stop_recording_icon")
  end

  def btn_share
    browser.element(css:"#camera_review_action_share")
  end

  #  webcam_stop_recording_icon


  # camera_review_action_share  (cherez enabled)

  # Methods

  def record_video
    btn_record.click
    sleep 5
    btn_stop.click
  end

  def share_video
    btn_share.wait_until(&:present?)
    browser.wait_until{!btn_share.attribute('class').include?('disabled')}
    btn_share.click
  end

end

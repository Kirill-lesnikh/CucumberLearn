class VideoRecording
  require 'watir'

  # Objects on page

  def btn_webcam_record
    browser.element(css: "#btn_webcam_record")
  end

  def btn_webcam_stop_recording
    browser.element(css: "#webcam_stop_recording_icon")
  end

  def btn_assign_video
    browser.element(css: '#camera_review_action_assign')
  end

  def btn_record_reply
    browser.element(css: '#ecg_record')
  end

  # moves

  def record_video
    btn_webcam_record.click
    sleep 5
    btn_webcam_stop_recording.click
  end

  def wait_for_assign
    # waiting for assign key being accessable and assign
    btn_assign_video.wait_until(&:present?)
    browser.wait_until(timeout: 120) { !btn_assign_video.attribute('class').include?('disabled') }
  end

  # assign ExCreators video
  def assign_video
    btn_assign_video.click
  end

  def record_reply
    change_tab
    # browser.element(css: '#record_assignment').click
    btn_record_reply.click
    Kernel.puts 'im here 0'
    windows_after = get_browser_windows_size
    record_video
    Kernel.puts 'im here 1'
    while 1 < windows_after
      windows_after = get_browser_windows_size
      Kernel.puts windows_after
      sleep 1
    end
    Kernel.puts 'im here 2'
    change_tab
    Kernel.puts 'im here 3'
  end

end

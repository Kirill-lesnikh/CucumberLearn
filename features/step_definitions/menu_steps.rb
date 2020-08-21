And(/^I create a new (.*)$/) do |item|
  case item
  when 'video'
    page(Header).open_menu
    page(Header).record_new_video
    page(CameraPage).record_video
    page(CameraPage).share_video
  else
    raise "There is no such item in menu: #{item}"
  end
end
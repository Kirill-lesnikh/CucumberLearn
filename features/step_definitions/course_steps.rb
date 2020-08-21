And(/^I am adding a new course$/) do
  page(ManageCollections).add_new_course
  page(CourseProperties).set_title
  page(CourseProperties).set_description
end

And(/^I share the course with assignee$/) do
  page(CourseProperties).share_with_users
  page(CourseProperties).set_assignee('exassigneenew.qa@dev')
  page(CourseProperties).share

end

And(/^I share the video on course$/) do
  page(VideoListChannels).choose_channel_to_share
  page(VideoListChannels).share
  puts 'shared'
end


#TODO - refactor this godzilla 2
And(/^I choose course$/) do
  p 1
  windows = get_browser_windows_size
  p 2
  page(OpenTasks).choose_course
  p 3
  page(OpenTasks).continue_course
  p 4
  browser.wait_until{get_browser_windows_size > windows}
  p 5
  change_tab
  p 6

    #TODO - check if play or pause button present. if pause -> wait for the end if play -> click and wait for the end
  page(VideoPlayer).play
  p 7
  #TODO - finish the method
    # raise 'finish the method'

  # suggested_action_continue - btn to continue between videos
    # TODO - find the way to check % of watched video
  puts page(VideoPlayer).viewed_status.text
  browser.wait_until{page(VideoPlayer).viewed_status.text == 'Viewed 100%'}
  page(VideoPlayer).contonue
  p 9
  sleep 10
  p 10
  page(VideoPlayer).play
  browser.wait_until{page(VideoPlayer).viewed_status.text == 'Viewed 100%'}
  page(VideoPlayer).exit
  browser.wai_until{get_browser_windows_size <= windows}
  change_tab
  puts 'good'

end
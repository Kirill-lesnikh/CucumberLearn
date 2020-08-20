And(/^I am going to home page$/) do
  page(HomePage).goto_home_page
end

Then(/^I click "see all"$/) do
  page(HomePage).see_all_tasks
end

And(/^I choose given task$/) do
  $windows_count = get_browser_windows_size
  page(MyOpenTasks).choose_task

end

And(/^I click record a reply$/) do
  page(VideoRecording).record_reply
end

And(/^I assign my reply$/) do
  page(AssignVideoReply).assign_reply
end

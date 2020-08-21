And(/^I change its properties and add to course$/) do
  page(VideoShareProperties).set_title
  page(VideoShareProperties).set_description
  page(VideoShareProperties).share_channels
end
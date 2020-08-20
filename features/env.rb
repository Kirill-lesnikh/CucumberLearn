require 'watir'
require 'cucumber'
require 'time'

include HasBrowser

World(HasBrowser)


T = Time.new
$task_name = "Task_name 123123"

start_browser_session

ENV['COURSE_NAME']       ||= 'new course'
ENV['TASK_NAME']         ||= 'new task'
ENV['DESCRIPTION']       ||= 'random description'
ENV['PREFIX_FOR_COPIES'] ||= 'prefix for copy'
ENV['VIDEO_NAME']        ||= 'video name oaoaoa'






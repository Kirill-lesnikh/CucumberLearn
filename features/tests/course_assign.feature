Feature: Course assign
  Login, create course, assign it,
  record 1 video, add it to the course,
  copy created video, rename it and add to the course
  Logout, login as assignee, open course
  and watch both videos
  Check if course is 100% complition

Scenario: Create course, assign it and complete

  Given I am on Login page
  Then I log in as "creator"
  And I open "Manage Collections" page
    And I am adding a new course
    And I share the course with assignee
  And I create a new video
    And I change its properties and add to course
    And I share the video on course
  Then I navigate to My Content
    And I copy created video
  Then I logout
  Given I am on Login page
  Then I log in as "assignee"
  And I open "MyOpenTasks" page
  And I choose course
  And I watch videos




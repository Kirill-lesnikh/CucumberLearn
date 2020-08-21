Feature: Course assign
  Login, create course, assign it,
  record 1 video, add it to the course,
  copy created video, rename it and add to the course
  Logout, login as assignee, open course
  and watch both videos
  Check if course is 100% complition

  Scenario: Create course, assign it and complete


    Given I am on Login page
    Then I log in as "assignee"
    And I open "MyOpenTasks" page
    And I choose course
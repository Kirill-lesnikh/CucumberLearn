Feature: Create smart Ex

  Scenario: Creating smart Ex
    Given I am going to login page
    Then I am  logging in with: "excreator2.qa@dev"
    And I check if I am Successful
    Then I open menu
    And Click create new SmartEx
    Then I change SmartEx description
    And Set replies goes to: Me
    And I click record message
    And I record a video
    And I wait for Assign key to be available and assign
    Then I click Assign and assign the video
    And I choose assignee
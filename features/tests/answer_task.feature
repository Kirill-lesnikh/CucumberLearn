Feature: Answer task

  Scenario: Answer task

    Given I am going to login page
    Then I am  logging in with: "exassigneenew.qa@dev"
    And I check if I am Successful
    And I am going to home page
    Then I click "see all"
    And I choose given task
    And I click record a reply
    And I assign my reply


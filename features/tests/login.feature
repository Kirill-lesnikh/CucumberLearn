Feature: Login

  Try to login

  Scenario: Try to login

    Given I am going to login page
    Then I am  logging in with: "excreator2.qa@dev"
    And I check if I am Successful


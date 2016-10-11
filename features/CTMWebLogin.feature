Feature: Login to CTMWeb

  Scenario: Login and logout using data from yml
    When I open automationpractice website
    And I login using data from yml
    Then I verify that I successfully logged in



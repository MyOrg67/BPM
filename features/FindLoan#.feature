Feature: Find valid loan number

  Scenario: Click on Menu and select sub menu
    When I open automationpractice website
    And I login using data from yml
    Then I verify that I successfully logged in
    And I click on Menus
    Then I click on closing
    Then I click on Validations
    Then I search for valid loan using loan number from yml
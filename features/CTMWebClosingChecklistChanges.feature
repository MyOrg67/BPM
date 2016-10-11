Feature: Login to CTMWeb

  Scenario: Find valid loan number
    When I open automationpractice website
    And I login using data from yml
    Then I verify that I successfully logged in
    And I click on Menus
    Then I click on closing
    Then I click on Validations
    Then I search for valid loan using loan number from yml
    Then I click on are taxes due
    Then I verify fields are displayed
    Then I click on are taxes due again
    Then I verify section ten exists
    Then I verify new field Amount of Tolerance Cure exists
    Then I verify two fields for ARM Loans exist
    Then I enter Flood Loan number
    Then I verify flood question appears
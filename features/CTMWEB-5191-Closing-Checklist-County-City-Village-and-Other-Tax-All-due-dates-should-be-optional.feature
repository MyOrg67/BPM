Feature:  Closing Checklist - County, City, Village and Other Tax: All due dates should be optional

  Scenario:  Currently, the County, City, Village and Other Tax fields all have at least one date entry required.
  Not all loans have all, if any of these taxes. Make them optional.
  Per Patty Pieske
    Given You are in the Closing page
    And I see Validations
    And I click on Validations
    And you enter loan
    And you click on checklist 7 tab
    And you click on Are taxes due button
    Then you see the taxes due sections and all have the word optional added
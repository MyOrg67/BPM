Feature:  CTM Web - Closing Validation Screen - Disclosure Indicator
  Scenario:  We previously, when a user clicked on the button “Only Disclose Via CD” the button switches to “Allow LE Disclosures” (which is working correctly)
  and it will indicate Only Disclosing via CD and the “by” would show who indicate who the person was that chose this option and date and time that was done.
    Given You are in the Closing page
    And you see Validations
    And you click on Validations
    And you enter loan number
    And you see Only Disclose Via CD button
    Then message displays with date timestamp and user that clicked Only Disclose Via CD button

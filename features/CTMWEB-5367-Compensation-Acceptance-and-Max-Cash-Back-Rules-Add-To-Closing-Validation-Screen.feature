Feature:  Compensation Acceptance and Max Cash Back Rules - Add To Closing Validation Screen
  Scenario:  Closing would like the Compensation Acceptance Rule currently run on CTMWeb's Initial Validation screen AND
  the Max Cash Back Rule currently run on CTMWeb's UW screen to both be added to the Closing Validation and PreClosing
  Validations screens.  Internal audits have found loans that closed with the incorrect compensation amount based on the
  broker's compensation tier. A rule currently is run on the Initial Validation screen to prevent loans from exceeding
  the maximum compensation allowed, and Closing would like this added to their Closing Validation screen as Closers have
  to ensure the Compensation amount is correct as well. Also to ensure Max Cash back is correct at time of closing
    Given You are in the PreClosing page
    And I see PreClosing Validations
    And I click on PreClosing Validations
    #And I enter loan number
    Then you see Compensation Acceptance and Max Cash Back Acceptance Validations in the Pre-Closing Checklist
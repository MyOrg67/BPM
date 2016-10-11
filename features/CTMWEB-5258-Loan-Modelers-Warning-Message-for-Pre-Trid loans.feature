Feature:  Loan Modelers-Warning Message for Pre-Trid loans
  Scenario:  We no longer support pre trid loans. So, we need to add warning message for pre-trid loans.
    Given You are in the Closing page
    And you see Loan Modelers
    And you see Display Loan
    And you enter pre trid loan number
    And you get pre trid error message that they are no longer supported
    And you repeat the process with another pre trid loan and get the same error message
    Then repeat process once more with a non pre trid loan and do not receive error message




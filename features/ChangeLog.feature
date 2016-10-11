Feature:  Setting up Underwriting Conditions and Decisions that will serve as setup steps for ChangeLog Tests

  Scenario:  Closing Document sent to STLA

    Given You are logging into Mortgagebot
    And You select a loan
    And You disclose or redeisclose loan
    And You make entries in the Underwriter Conditions and Decisions fields
    And you Approve all PTC and CPTC conditions and Save
    And you click on the Notes icon and enter message code and Save
    Then you click on the Notebook icon and verify the change shows up in Loan Notes

  Scenario:  Closing Document sent to CTC

    Given You are logging into Mortgagebot
    And You select a loan
    And You disclose or redeisclose loan
    And You make entries in the Underwriter Conditions and Decisions fields
    And you Approve all PTC and CPTC conditions and Save
    And you click on the Notes icon and enter CDP message code and Save
    Then you click on the Notebook icon and verify the change CDP shows up in Loan Notes

  Scenario:  Closing Document sent to CDRS

    Given You are logging into Mortgagebot
    And You select a loan
    And You disclose or redeisclose loan
    And You make entries in the Underwriter Conditions and Decisions fields
    And you Approve all PTC and CPTC conditions and Save
    And you click on the Notes icon and enter CDRS message code and Save
    Then you click on the Notebook icon and verify the change CDRS shows up in Loan Notes

  Scenario:  Closing Document sent to CDSB

    Given You are logging into Mortgagebot
    And You select a loan
    And You disclose or redeisclose loan
    And You make entries in the Underwriter Conditions and Decisions fields
    And you Approve all PTC and CPTC conditions and Save
    And you click on the Notes icon and enter CDSB message code and Save
    Then you click on the Notebook icon and verify the change CDSB shows up in Loan Notes

  Scenario:  Closing Document sent to FPO

    Given You are logging into Mortgagebot
    And You select a loan
    And You disclose or redeisclose loan
    And You make entries in the Underwriter Conditions and Decisions fields
    And you Approve all PTC and CPTC conditions and Save
    And you click on the Notes icon and enter FPO message code and Save
    Then you click on the Notebook icon and verify the change FPO shows up in Loan Notes

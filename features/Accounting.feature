Feature:  Interacting with the element within the Accounting Page
  Scenario:  Storing interaction steps within the Accounting Page
    Given You are in the Accounting page
    And I see Scheduled Funding, Commissions and TSS
    When I click on Scheduled Funding
    Then I should get Scheduled Funding results
    When I click on commissions
    Then I should get Commissions drop down menu
    When I click on TSS
    Then I should get TSS drop down menu


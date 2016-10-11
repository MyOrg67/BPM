Feature:  Creating an FHA 30 year Refinance loan in Mortgagebot
  Scenario:  Creating a loan from beginning to disclosure

    Given You are in the Login page
    When I Login
    And I get Landing page
    And On the main menu, click the drop down on Create and select Create Loan
    And Click on the Originator textbox
    And Then I click on Submit
    And then enter first name in Borrower Summary
    And then enter last name in Borrower Summary
    And enter DOB in Borrower Summary
    And enter SSN in Borrower Summary
    And enter street address in Borrower Summary
    And enter city in Borrower Summary
    And enter street number in Borrower Summary
    And enter street name in Borrower Summary
    And enter city name in Borrower Summary
    And enter zip in Borrower Summary
    And enter sale price in Borrower Summary
    And enter appraised value in Borrower Summary
    And enter base loan amount in Borrower Summary
    And select detached property type in Borrower Summary
    And select primary residence for property will be in Borrower Summary
    And select refinanced for purpose of loan in Borrower Summary
    And select streamline refi fixed for product in Borrower Summary

    #  These two fields are pre-populated and are commented out should there be a need to enter manually
    #And select conventional for mortgage applied for in Borrower Summary
    #And select first mortgage for lein type in Borrower Summary

    And select number of months in Borrower Summary
    And select rate in Borrower Summary
    And click Save in Borrower Summary
    And click on the continue button in Borrower Summary
    And click on SaveClose button in Borrower Summary
    And get the loan number that was just created in Borrower summary
    And you click on forms and docs on Loan Detail page
    And you click on 1003 on Loan Detail page
    And you select on section II on the Detail page
    And enter the One in the number of units on the Detail page
    And enter TBD in the manner in which it will be held on the Detail Page
    And select Fee Simple in the estate held in on the Detail page
    And select the borrower tab III on the Detail page
    And enter the email address on the Detail Page
    And select unmarried for marital status on the Detail page
    And select rent on the Detail page
    And enter three in years on the Detail page
    And select Income Housing tab V on the Detail page
    And enter 4000 for base income on the Detail page
    And click SaveClose on the Detail page
    And you click on 1003 again on Loan Detail page
    And select the declarations VIII header on Details page
    And select the declarations on the Details page
    And select SaveClose on the Details page
    And you click on 1003 once again on Loan Detail page
    And select the government monitoring X tab on Details page
    And select ethnicity not hispanic or latino on the Details page
    And select gender female on the Details page
    And select race asian on the details page
    And select application taken by internet on the Details page
    And select othe data tab on Details page
    And select property status existing on Details page
    And select will escrow be waived no on Details page
    And select save button on Details page
    And select Loan estimate on Details page
    And select in person on disclosure delivery method on Loan Estimate page
    And enter today's date for borrower provided intent to proceed date on Loan Estimate page
    And select electronic for method provided on Loan Estimate page
    And enter estimated closing date 30 days after today's date on Loan Estimate page
    And select fees on Loan Estimate page
    And click on save on Loan Estimate page
    And click on disclose on Loan estimate page
    And click on forms and docs again on the details page
    And select doc packages on Details page
    And select order document package Doc Package on Details page
    And select document package type on Initial Disclosure page
    And enter MBF in Alt Lender Code on Initial Disclosure page
    And check the box on edisclosure on Initial Disclosure page
    And check the box on click sign on Initail Disclosure page
    And click on submit on the Initial Disclosure
    Then refresh page to view Doc Package in mortgagebot

















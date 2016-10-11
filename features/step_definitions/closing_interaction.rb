
Given(/^You are in the Closing page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).closing.when_present(10).click
  sleep(3)
end

And(/^I see Validations$/) do
  expect(on(ClosingPage).validations.present?).to be_truthy
  expect(on(ClosingPage).loanModelers.present?).to be_truthy
  expect(on(ClosingPage).floridaCondoPERSlist.present?).to be_truthy
  expect(on(ClosingPage).reports.present?).to be_truthy
end

When(/^I click on Validations and Reports$/) do
  on(ClosingPage).validations.when_present(10).click
  on(ClosingPage).loanModelers.when_present(10).click
  on(ClosingPage).floridaCondoPERSlist.when_present(10).click
  on(ClosingPage).reports.when_present(10).click
end

Then(/^I get Closing Reports drop down selections/) do
  on(ClosingPage).monthlyDefectReport.when_present(10).click
  on(ClosingPage).reports.when_present(10).click
  sleep(1)
  on(ClosingPage).monthToMonthComparisonReport.when_present(10).click
  on(ClosingPage).reports.when_present(10).click
  on(ClosingPage).closingChecklistReport.when_present(10).click
  sleep(5)
end

#CTMWEB-5258-Loan Modelers-Warning Message for Pre-Trid loans
And(/^you see Loan Modelers$/) do
  expect(on(ClosingPage).loanModelers.present?).to be_truthy
  on(ClosingPage).loanModelers.when_present(10).click
end

And(/^you see Display Loan$/) do
  sleep(3)
  expect(on(ClosingLoanModelersPage).displayLoan.present?).to be_truthy
end

And(/^you enter pre trid loan number$/) do
  on(ClosingLoanModelersPage).loan_yml
end

And(/^you get pre trid error message that they are no longer supported$/) do
  sleep(3)
  expect(on(ClosingLoanModelersPage).message.present?).to be_truthy
end

And(/^you repeat the process with another pre trid loan and get the same error message$/) do
  on(ClosingLoanModelersPage).loan2_yml
  sleep(3)
  expect(on(ClosingLoanModelersPage).message.present?).to be_truthy
end

Then(/^repeat process once more with a non pre trid loan and do not receive error message$/) do
  on(ClosingLoanModelersPage).loan3_yml
  sleep(3)
  expect(on(ClosingLoanModelersPage).message.present?).to be_falsey
end

#CTMWEB-5238-Closing Validation Screen - Disclosure Indicator
And(/^you see Validations$/) do
  expect(on(ClosingPage).validations.present?).to be_truthy
end

And(/^you click on Validations$/) do
  on(ClosingPage).validations.when_present(10).click
end

And(/^you enter loan number$/) do
  sleep(3)
  on(ClosingValidationsPage).validationLoanID.when_present(10).click
  on(ClosingValidationsPage).loan4_yml
end

And(/^you see Only Disclose Via CD button$/) do
   sleep(45)
   if
     on(ClosingValidationsReportsPage).onlyDiscloseViaCD.present?
     on(ClosingValidationsReportsPage).onlyDiscloseViaCD.when_present(10).hover
     sleep(2)
     on(ClosingValidationsReportsPage).onlyDiscloseViaCD.when_present(10).click
   else
     on(ClosingValidationsReportsPage).allowLEDisclosures.present?
     on(ClosingValidationsReportsPage).allowLEDisclosures.when_present(10).click
     sleep(2)
     on(ClosingValidationsReportsPage).onlyDiscloseViaCD.when_present(10).hover
     on(ClosingValidationsReportsPage).onlyDiscloseViaCD.when_present(10).click
   end

end

#CTMWEB 5238

Then(/^message displays with date timestamp and user that clicked Only Disclose Via CD button$/) do
  sleep(3)
  expect(on(ClosingValidationsReportsPage).message.present?).to be_truthy
  on(ClosingValidationsReportsPage).btnmessage
  #expect(on(ClosingValidationsReportsPage).message.present?).to include("McGrath, John")
  #expect(on(ClosingValidationsReportsPage).message.present?).to include(Time.now.strftime("%m/%d/%Y %H:%M %p"))

end

#  CTMWEB-5367 Compensation Acceptance and Max Cash Back Rules - Add To Closing Validation Screen

Then(/^you see Compensation Acceptance and Max Cash Back Acceptance Validations in the Closing Checklist$/) do
  on(ClosingValidationsPage).enterLoanNumber.when_present(10).send_keys("6000390")
  on(ClosingValidationsPage).search.when_present(10).click
  sleep(3)
  on(ClosingValidationsPage).compensationAcceptance.when_present(45).click
  expect(on(ClosingValidationsPage).compensationAcceptance.present?).to be_truthy
  sleep(5)
  on(ClosingValidationsPage).maxCashBackAcceptance.when_present(45).click
  expect(on(ClosingValidationsPage).maxCashBackAcceptance.present?).to be_truthy
end

#CTMWEB-5191 County, City, Village and Other taxes changed to being optional

And(/^you click on checklist 7 tab$/) do
  on(ClosingValidationsReportsPage).checklistSeven.when_present(30).click
end

And(/^you click on Are taxes due button$/) do
  on(ClosingValidationsReportsPage).areTaxesDue.when_present(10).click
end

And(/^you enter loan$/) do
    on(ClosingValidationsPage).enterLoanNumber.when_present(10).send_keys("6000390")
    on(ClosingValidationsPage).search.when_present(10).click
    sleep(5)
end

Then(/^you click on Closing Checklist$/) do
  on(ClosingValidationsReportsPage).closingChecklist.when_present(10).click
end

Then(/^you see the taxes due sections and all have the word optional added$/) do
  on(ClosingValidationsReportsPage).countyTax.when_present(10).click
  expect(on(ClosingValidationsReportsPage).countyTax.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate1.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate1.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate2.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate2.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate3.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate3.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate4.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate4.present?).to be_truthy

  on(ClosingValidationsReportsPage).cityTax.when_present(10).click
  expect(on(ClosingValidationsReportsPage).cityTax.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate5.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate5.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate6.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate6.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate7.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate7.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate8.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate8.present?).to be_truthy

  on(ClosingValidationsReportsPage).villageTax.when_present(10).click
  expect(on(ClosingValidationsReportsPage).villageTax.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate9.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate9.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate10.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate10.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate11.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate11.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate12.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate12.present?).to be_truthy

  on(ClosingValidationsReportsPage).otherTax.when_present(10).click
  expect(on(ClosingValidationsReportsPage).otherTax.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate13.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate13.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate14.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate14.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate15.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate15.present?).to be_truthy
  on(ClosingValidationsReportsPage).dueDate16.when_present(10).click
  expect(on(ClosingValidationsReportsPage).dueDate16.present?).to be_truthy

end
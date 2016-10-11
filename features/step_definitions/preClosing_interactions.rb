Given(/^You are in the PreClosing page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).preClosing.when_present(10).click
end

And (/^I see PreClosing Validations$/) do
  sleep(7)
  expect(on(PreClosingPage).preClosingValidations.present?).to be_truthy
end

When(/^I click on PreClosing Validations$/) do
  on(PreClosingPage).preClosingValidations.when_present(10).click
end

Then(/^I get PreClosing Validations results/) do
  sleep(3)
end

#  CTMWEB-5367 Compensation Acceptance and Max Cash Back Rules - Add To Closing Validation Screen


Then(/^you see Compensation Acceptance and Max Cash Back Acceptance Validations in the Pre\-Closing Checklist$/) do
  on(PreClosingValidationPage).enterLoanNumber.when_present(10).send_keys("6000390")
  on(PreClosingValidationPage).displayLoan.when_present(10).click
  sleep(3)
  on(PreClosingReportPage).compensationAcceptance.when_present(45).click
  expect(on(PreClosingReportPage).compensationAcceptance.present?).to be_truthy
  sleep(5)
  on(PreClosingReportPage).maxCashBackAcceptance.when_present(45).click
  expect(on(PreClosingReportPage).maxCashBackAcceptance.present?).to be_truthy
end

#  OPQOPQ-279 Compensation Acceptance and Max Cash Back Rules - Add To Closing Validation Screen
#Then(/^you logoff$/) do
#  on(PreClosingReportPage).logOut.when_present(10).click
#  sleep(10)
#end
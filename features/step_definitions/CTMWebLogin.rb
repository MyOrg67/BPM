When(/^I open automationpractice website$/) do
  visit AutomationHomePage
end

And(/^I login using data from yml$/) do
  sleep(3)
  on(LoginPage).login_yml
end

Then(/^I verify that I successfully logged in$/) do
  sleep(5)
  expect(on(LandingPage).logout.present?).to be_truthy
end

And(/^I click on Menus$/) do
    on(LandingPage).menus.when_present(10).click
end

Then (/^I click on closing$/) do
  on(LandingPage).closing.when_present(10).click
end

Then (/^I click on Validations$/) do
  on(ClosingPage).validations.when_present(10).click
  sleep(2)
end

Then(/^I search for valid loan using loan number from yml$/) do
  sleep(5)
  on(ClosingPage).login_yml
end

Then(/^I click on are taxes due$/) do
  on(LoanValidationPage).areTaxesDue.when_present(60).click
  on(LoanValidationPage).areTaxesDue.when_present(5).send_keys("Y")
  on(LoanValidationPage).areTaxesDue.when_present(5).send_keys :enter
end

Then(/^I verify fields are displayed$/) do
  expect(on(LoanValidationPage).countyTax.present?).to be_truthy
  expect(on(LoanValidationPage).cityTax.present?).to be_truthy
  expect(on(LoanValidationPage).villageTax.present?).to be_truthy
  expect(on(LoanValidationPage).otherTax.present?).to be_truthy
end

Then(/^I click on are taxes due again$/) do
  on(LoanValidationPage).areTaxesDue.when_present(5).click
  on(LoanValidationPage).areTaxesDue.when_present(5).send_keys("N")
  on(LoanValidationPage).areTaxesDue.when_present(5).send_keys :enter
  expect(on(LoanValidationPage).countyTax.present?).to be_falsey
  expect(on(LoanValidationPage).cityTax.present?).to be_falsey
  expect(on(LoanValidationPage).villageTax.present?).to be_falsey
  expect(on(LoanValidationPage).otherTax.present?).to be_falsey
  sleep(3)
end

Then(/^I verify section ten exists$/) do
  expect(on(LoanValidationPage).sectionTenExists.present?).to be_truthy
  on(LoanValidationPage).sentToBorrowerDate.when_present(5).click
  sleep(5)
end

Then(/^I verify new field Amount of Tolerance Cure exists$/) do
  on(LoanValidationPage).amountOfToleranceCure.when_present(5).click
  sleep(5)
  expect(on(LoanValidationPage).amountOfToleranceCure.present?).to be_truthy
end

Then(/^I verify two fields for ARM Loans exist$/) do
  on(LoanValidationPage).LiborARM.when_present(5).click
  sleep(5)
  expect(on(LoanValidationPage).LiborARM.present?).to be_truthy
  on(LoanValidationPage).ARMCaps.when_present(5).click
  sleep(5)
  expect(on(LoanValidationPage).ARMCaps.present?).to be_truthy
end

Then(/^I enter Flood Loan number$/) do
  on(LoanValidationPage).login_yml
  sleep(5)
end

Then(/^I verify flood question appears$/) do
  on(LoanValidationPage).HOIHO6.when_present(60).click
  expect(on(LoanValidationPage).HOIHO6.present?).to be_truthy
end


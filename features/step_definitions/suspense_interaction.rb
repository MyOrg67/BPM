Given(/^You are in the Suspense page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).suspense.when_present(10).click
end

And (/^I see Closing Validations/) do
  sleep(5)
  expect(on(SuspensePage).closingValidations.present?).to be_truthy
end

When(/^I click on Closing Validations$/) do
  on(SuspensePage).closingValidations.when_present(10).click
end

Then(/^I get Closing Validations results$/) do
  sleep(3)
end
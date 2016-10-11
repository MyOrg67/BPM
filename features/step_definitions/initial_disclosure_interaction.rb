Given(/^You are in the Initial Disclosure page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).initialDisclosure.when_present(10).click
  sleep(3)
end
And (/^I see Initial Disclosure Validation$/) do
  expect(on(InitialDisclosurePage).initialDisclosureValidation.present?).to be_truthy
end

When(/^I click on Initial Disclosure Validation$/) do
  on(InitialDisclosurePage).initialDisclosureValidation.when_present(10).hover
end

Then(/^I get Initial Disclosure Validation results/) do
  on(InitialDisclosurePage).initialDisclosureWorkQueue.when_present(10).hover
  sleep(3)
end
Given(/^You are in the Operations page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).operations.when_present(10).click
  sleep(3)
end
And (/^I see Originator Status$/) do
  expect(on(OperationsPage).originatorStatus.present?).to be_truthy
end

When(/^I click on Originator Status$/) do
  on(OperationsPage).originatorStatus.when_present(10).click
end

Then(/^I get Originator Status results/) do
  on(OperationsPage).institutionStatus.when_present(10).click
  sleep(3)
end
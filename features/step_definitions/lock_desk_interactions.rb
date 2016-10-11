Given(/^You are in the Lock Desk page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).lockDesk.when_present(10).click
  sleep(3)
end
And (/^I see Credit Suisse Exports$/) do
  expect(on(LockDeskPage).creditSuisseExports.present?).to be_truthy
end

When(/^I click on Credit Suisse Exports$/) do
  on(LockDeskPage).creditSuisseExports.when_present(10).click
end

Then(/^I get Credit Suisse Exports results/) do
  on(LockDeskPage).jumboOpsReports.when_present(10).click
  sleep(3)
end
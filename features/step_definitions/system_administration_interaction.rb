Given(/^You are in the System Administration page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).systemAdministration.when_present(10).click
  sleep(3)
end

And(/^I see Usage Stats$/) do
  expect(on(SystemAdministrationPage).usageStats.present?).to be_truthy
end

When(/^I click on Usage Stats$/) do
  on(SystemAdministrationPage).usageStats.when_present(10).click
end

Then(/^I get Usage Stats results$/) do
  sleep(25)
  expect(on(SystemAdministrationPage).allControllers.present?).to be_truthy
end
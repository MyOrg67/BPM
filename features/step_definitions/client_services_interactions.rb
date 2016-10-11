Given(/^You are in the Client Services page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).clientServices.when_present(10).click
  sleep(3)
end

And(/^I see Reports$/) do
  expect(on(ClientServicesPage).reports.present?).to be_truthy
end

When(/^I click on Reports$/) do
  on(ClientServicesPage).reports.when_present(10).click
end

Then(/^I get Reports drop down selections/) do
  on(ClientServicesPage).conditionsPendingReview.when_present(10).click
  sleep(5)
end
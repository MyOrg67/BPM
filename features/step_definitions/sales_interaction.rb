Given(/^You are in the Sales page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).sales.when_present(10).click
end

And (/^I see Regions$/) do
  sleep(5)
  expect(on(SalesPage).regions.present?).to be_truthy
end

When(/^I click on Regions$/) do
  on(SalesPage).regions.when_present(10).click
end

Then(/^I get Regions results/) do
  sleep(3)
end
Given(/^You are in the Title Vendors page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).titleVendors.when_present(10).click
end

And (/^I see Title Vendors$/) do
  sleep(5)
  expect(on(TitleVendorsPage).titleVendors.present?).to be_truthy
end

When(/^I click on Title Vendors$/) do
  on(TitleVendorsPage).titleVendors.when_present(10).click
end

Then(/^I get Title Vendors results$/) do
  on(TitleVendorsPage).vendorsByState.when_present(10).click
  sleep(3)
end
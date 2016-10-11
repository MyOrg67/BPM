Given(/^You are in the PAC page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).PAC.when_present(10).click
end

And (/^I see Jumbo Ops Reports$/) do
  sleep(5)
  expect(on(PACPage).jumboOpsReports.present?).to be_truthy
end

When(/^I click on Jumbo Ops Reports$/) do
  on(PACPage).jumboOpsReports.when_present(10).click
end

Then(/^I get Jumbo Ops Reports results/) do
  on(PACPage).creditSuisseExports.when_present(10).click
  sleep(3)
end
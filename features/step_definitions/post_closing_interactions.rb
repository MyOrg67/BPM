Given(/^You are in the Post Closing page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).postClosing.when_present(10).click
end

And (/^I see Credit Suisse Exports2$/) do
  sleep(5)
  expect(on(PostClosingPage).creditSuisseExports.present?).to be_truthy
end

When(/^I click on Credit Suisse Exports2$/) do
  on(PostClosingPage).creditSuisseExports.when_present(10).hover
end

Then(/^I get Credit Suisse Exports2 results/) do
  on(PostClosingPage).creditSuisseExports.when_present(10).click
    on(PostClosingPage).postPurchase.when_present(10).click
  on(PostClosingPage).creditSuisseExports.when_present(10).click
    on(PostClosingPage).purchase.when_present(10).click

  on(PostClosingPage).jumboOpsReports.when_present(10).click
    sleep(3)
end
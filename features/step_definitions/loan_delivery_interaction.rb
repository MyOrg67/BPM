Given(/^You are in the Loan Delivery page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).loanDelivery.when_present(10).click
end

And (/^I see Redwood/) do
  sleep(5)
  expect(on(LoanDeliveryPage).redwood.present?).to be_truthy
end

When(/^I click on Redwood$/) do
  on(LoanDeliveryPage).redwood.when_present(10).click
end

Then(/^I get Redwood results$/) do
  on(LoanDeliveryPage).FNMAPool.when_present(10).click
  on(LoanDeliveryPage).FNMACash.when_present(10).click
  on(LoanDeliveryPage).GNMAPool.when_present(10).click
  on(LoanDeliveryPage).FHLMCPool.when_present(10).click
  on(LoanDeliveryPage).FHLMCCash.when_present(10).click
  on(LoanDeliveryPage).FHLMCIndividual.when_present(10).click
  on(LoanDeliveryPage).FHLBPool.when_present(10).click
  sleep(3)
end
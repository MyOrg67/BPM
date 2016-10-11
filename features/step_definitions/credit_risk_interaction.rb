Given(/^You are in the Credit Risk page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).creditRisk.when_present(10).click
  sleep(3)
end

And(/^I see TSS/) do
  expect(on(CreditRiskPage).TSS.present?).to be_truthy
  expect(on(CreditRiskPage).floridaCondoPERSList.present?).to be_truthy
end

When(/^I click on TSS drop down$/) do
  on(CreditRiskPage).TSS.when_present(10).click
  sleep(3)
end

Then(/^I get TSS drop down selections/) do
    on(CreditRiskPage).sellers2.when_present(10).hover
      on(CreditRiskPage).contracts.when_present(10).click
  on(CreditRiskPage).TSS.when_present(10).click
    on(CreditRiskPage).sellers.when_present(10).hover
      on(CreditRiskPage).sellers.when_present(10).click

  on(CreditRiskPage).monthToMonthComparisonReport.when_present(10).click
  on(CreditRiskPage).reports.when_present(10).click
  on(CreditRiskPage).closingChecklistReport.when_present(10).click
  sleep(5)
end
Given(/^You are in the Funding page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).funding.when_present(10).click
  sleep(3)
end

And(/^I see Funding Checklist/) do
  expect(on(FundingPage).fundingChecklist.present?).to be_truthy
end

When(/^I click on Funding Checklist$/) do
  on(FundingPage).fundingChecklist.when_present(10).click
  sleep(3)
end

Then(/^I get Funding Checklist results/) do
  on(FundingPage).reports.when_present(10).click
    on(FundingPage).fundingChecklistReport.when_present(10).click
  on(FundingPage).reports.when_present(10).click
    on(FundingPage).comparisonReport.when_present(10).click
  sleep(3)
end
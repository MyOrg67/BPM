Given(/^You are in the BPM page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).BPM.when_present(10).click
  sleep(3)
end

And(/^I see Statistic Reports$/) do
  expect(on(BPMPage).statisticReports.present?).to be_truthy
end

When(/^I click on Statistic Reports$/) do
  on(BPMPage).statisticReports.when_present(10).click
end

Then(/^I get Statistic Reports drop down selections/) do
    on(BPMPage).categorizedValidationErrors.when_present(10).click
    sleep(5)
  on(BPMPage).statisticReports.when_present(10).click
    on(BPMPage).generalAssignedUnderwriterData.when_present(10).click
    sleep(5)
  on(BPMPage).statisticReports.when_present(10).click
    on(BPMPage).generalLoanData.when_present(10).click
  sleep(5)
end
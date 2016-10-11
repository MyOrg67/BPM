Given(/^You are in the Compliance page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).compliance.when_present(10).click
  sleep(3)
end

And(/^you see Reg$/) do
  expect(on(CompliancePage).reg0.present?).to be_truthy
end

And(/^you click on Reg$/) do
  on(CompliancePage).reg0.when_present(10).click
end

Then(/^you scroll down and hover over Executives and it says MB and not CT$/) do
  expect(on(CompliancePage).CTExecutives.present?).to be_falsey
  expect(on(CompliancePage).MBExecutives.present?).to be_truthy
  on(CompliancePage).MBExecutives.when_present(10).hover
end

=begin
And(/^I see MERS$/) do
  expect(on(CompliancePage).MERS.present?).to be_truthy
  expect(on(CompliancePage).reg0.present?).to be_truthy
  expect(on(CompliancePage).HMDA.present?).to be_truthy
end


When(/^I click on MERS$/) do
  on(CompliancePage).MERS.when_present(10).click
end

Then(/^I get MERS drop down selections$/) do
  on(CompliancePage).dataImports.when_present(10).hover
    on(CompliancePage).MERSMonthlyData.when_present(10).click
  on(CompliancePage).MERS.when_present(10).click
    on(CompliancePage).dataImports.when_present(10).hover
      on(CompliancePage).DMIMonthlyData.when_present(10).click
  on(CompliancePage).MERS.when_present(10).click
    on(CompliancePage).dataImports.when_present(10).hover
      on(CompliancePage).acquiredLoansSource.when_present(10).click
  on(CompliancePage).MERS.when_present(10).click
    on(CompliancePage).dataImports.when_present(10).hover
      on(CompliancePage).DMIXrefImports.when_present(10).click
  on(CompliancePage).MERS.when_present(10).click
    on(CompliancePage).reconciliation.when_present(10).click
  on(CompliancePage).MERS.when_present(10).click
    on(CompliancePage).biennialReviews.when_present(10).click
  on(CompliancePage).MERS.when_present(10).click
    on(CompliancePage).MERSOrganizations.when_present(10).click
  on(CompliancePage).MERS.when_present(10).click
    on(CompliancePage).exceptionList.when_present(10).click

  on(CompliancePage).reg0.when_present(10).click
    on(CompliancePage).reg0Reports.when_present(10).click
  on(CompliancePage).reg0.when_present(10).click
  #renamed in CTMWEB-5273
  # on(CompliancePage).CTExecutives.when_present(10).click
  on(CompliancePage).MBExecutives.when_present(10).click
    sleep(2)

  on(CompliancePage).HMDA.when_present(10).click
    on(CompliancePage).reportableEvents.when_present(10).click
      sleep(3)
  on(CompliancePage).HMDA.when_present(10).click
    on(CompliancePage).purchasedLoans.when_present(10).click
      sleep(3)
  on(CompliancePage).HMDA.when_present(10).click
    on(CompliancePage).investorCodes.when_present(10).click
      sleep(3)
  on(CompliancePage).HMDA.when_present(10).click
    on(CompliancePage).exceptions.when_present(10).click
      sleep(3)
  on(CompliancePage).HMDA.when_present(10).click
    on(CompliancePage).exceptionReports.when_present(10).click
      sleep(3)
  on(CompliancePage).HMDA.when_present(10).click
    on(CompliancePage).reportFilters.when_present(10).click
      sleep(3)
  #on(CompliancePage).HMDA.when_present(10).click
    #on(CompliancePage).quarterlyAnnualProcess.when_present(10).click
      #sleep(3)
  #on(CompliancePage).HMDA.when_present(10).click
    #on(CompliancePage).dataChangeReport.when_present(10).click
      #sleep(3)
  on(CompliancePage).HMDA.when_present(10).click
    on(CompliancePage).HPMLLoansReport.when_present(10).click
      sleep(3)
  on(CompliancePage).HMDA.when_present(10).click
    on(CompliancePage).nonReportableLoans.when_present(10).click
=end


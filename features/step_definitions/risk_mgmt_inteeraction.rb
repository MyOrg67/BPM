Given(/^You are in the Risk Mgmt page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).riskMgmt.when_present(10).click
end

And (/^I see MERS2$/) do
  sleep(5)
  expect(on(RiskManagementPage).MERS2.present?).to be_truthy
end

When(/^I click on MERS2$/) do
  on(RiskManagementPage).MERS2.when_present(10).click
end

Then(/^I get MERS2 results/) do
    on(RiskManagementPage).dataImports.when_present(10).hover
      on(RiskManagementPage).MERSMonthlyData.when_present(10).click
  on(RiskManagementPage).MERS2.when_present(10).click
    on(RiskManagementPage).dataImports.when_present(10).hover
      on(RiskManagementPage).DMIMonthlyData.when_present(10).click
  on(RiskManagementPage).MERS2.when_present(10).click
    on(RiskManagementPage).dataImports.when_present(10).hover
      on(RiskManagementPage).acquiredLoansSource.when_present(10).click
  on(RiskManagementPage).MERS2.when_present(10).click
    on(RiskManagementPage).dataImports.when_present(10).hover
      on(RiskManagementPage).DMIXrefImports.when_present(10).click
  on(RiskManagementPage).MERS2.when_present(10).click
    on(RiskManagementPage).reconciliation.when_present(10).click
  on(RiskManagementPage).MERS2.when_present(10).click
    on(RiskManagementPage).biennialReviews.when_present(10).click
  on(RiskManagementPage).MERS2.when_present(10).click
    on(RiskManagementPage).MERSOrganizations.when_present(10).click
  on(RiskManagementPage).MERS2.when_present(10).click
    on(RiskManagementPage).exceptionList.when_present(10).click

  on(RiskManagementPage).reg0.when_present(10).click
    on(RiskManagementPage).reg0Reports.when_present(10).click
  on(RiskManagementPage).reg0.when_present(10).click
    on(RiskManagementPage).CTExecutives.when_present(10).click
  sleep(3)
end
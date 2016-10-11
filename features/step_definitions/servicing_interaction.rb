Given(/^You are in the Servicing page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).servicing.when_present(10).click
end

And (/^I see the MERStab$/) do
  sleep(5)
  expect(on(ServicingPage).MERS.present?).to be_truthy
end

When(/^I click on MERStab$/) do
  on(ServicingPage).MERS.when_present(10).click
end

Then(/^I get MERStab results/) do
  sleep(3)
    on(ServicingPage).dataImports.when_present(10).hover
      on(ServicingPage).MERSMonthlyData.when_present(10).click
  on(ServicingPage).MERS.when_present(10).click
    on(ServicingPage).dataImports.when_present(10).hover
      on(ServicingPage).DMIMonthlyData.when_present(10).click
  on(ServicingPage).MERS.when_present(10).click
    on(ServicingPage).dataImports.when_present(10).hover
      on(ServicingPage).acquiredLoansSource.when_present(10).click
  on(ServicingPage).MERS.when_present(10).click
    on(ServicingPage).dataImports.when_present(10).hover
      on(ServicingPage).DMIXrefImports.when_present(10).click
  on(ServicingPage).MERS.when_present(10).click
    on(ServicingPage).reconciliation.when_present(10).click
  on(ServicingPage).MERS.when_present(10).click
    on(ServicingPage).biennialReviews.when_present(10).click
  on(ServicingPage).MERS.when_present(10).click
    on(ServicingPage).MERSOrganizations.when_present(10).click
  on(ServicingPage).MERS.when_present(10).click
    on(ServicingPage).exceptionList.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).sellersHover.when_present(10).hover
      on(ServicingPage).contracts.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).sellersHover.when_present(10).hover
  sleep(1)
      on(ServicingPage).sellersTab.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).products.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).boarding.when_present(10).hover
      on(ServicingPage).selectLoans.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).boarding.when_present(10).hover
      on(ServicingPage).generateBoardingFile.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).reports.when_present(10).hover
      on(ServicingPage).accountingReports.when_present(10).hover
        on(ServicingPage).purchaseAdviceReports.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).reports.when_present(10).hover
      on(ServicingPage).accountingReports.when_present(10).hover
        on(ServicingPage).purchaseAdviceReconciliationReports.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).reports.when_present(10).hover
      on(ServicingPage).secondaryReports.when_present(10).hover
       on(ServicingPage).boardingReports.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).reports.when_present(10).hover
      on(ServicingPage).secondaryReports.when_present(10).hover
        on(ServicingPage).unfulfilledContracts.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).imports.when_present(10).hover
      on(ServicingPage).blitz.when_present(10).hover
        on(ServicingPage).loanFileUploaded.when_present(10).click
  on(ServicingPage).TSS.when_present(10).click
    on(ServicingPage).imports.when_present(10).hover
      on(ServicingPage).escrowsReceived.when_present(10).click
  on(ServicingPage).Fiserv.when_present(10).click
    on(ServicingPage).LOIFiles.when_present(10).click
  on(ServicingPage).Fiserv.when_present(10).click
    on(ServicingPage).manualBoarding.when_present(10).click
  sleep(3)


end
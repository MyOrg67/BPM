Given(/^You are in the Accounting page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  on(LandingPage).accounting.when_present(10).click
  sleep(3)
end


And(/^I see Scheduled Funding, Commissions and TSS$/) do
  expect(on(AccountingPage).scheduledFunding.present?).to be_truthy
  expect(on(AccountingPage).commissions.present?).to be_truthy
  expect(on(AccountingPage).TSS.present?).to be_truthy
end

When(/^I click on Scheduled Funding$/) do
  on(AccountingPage).scheduledFunding.when_present(10).hover
end

Then(/^I should get Scheduled Funding results$/) do
  on(AccountingPage).back
end


When(/^I click on commissions$/) do
  on(AccountingPage).commissions.when_present(10).click
end

Then(/^I should get Commissions drop down menu$/) do
  on(AccountingPage).reporting.when_present(10).hover
    on(AccountingPage).branchCommissions.when_present(10).click
  on(AccountingPage).commissions.when_present(10).click
    on(AccountingPage).reporting.when_present(10).hover
      on(AccountingPage).commissionPlanDetails.when_present(10).hover
  on(AccountingPage).back

  on(AccountingPage).commissions.when_present(10).click
    on(AccountingPage).branchCompensations.when_present(10).hover
      on(AccountingPage).branches.when_present(10).click
  on(AccountingPage).commissions.when_present(10).click
    on(AccountingPage).branchCompensations.when_present(10).hover
      on(AccountingPage).employees.when_present(10).click
  on(AccountingPage).commissions.when_present(10).click
    on(AccountingPage).branchCompensations.when_present(10).hover
    on(AccountingPage).loans.when_present(10).hover
  on(AccountingPage).back
end

When(/^I click on TSS$/) do
  on(AccountingPage).TSS.when_present(10).click
end

Then(/^I should get TSS drop down menu$/) do
    on(AccountingPage).sellers.when_present(10).hover
      on(AccountingPage).contracts.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).sellers.when_present(10).hover
      on(AccountingPage).sellers2.when_present(10).click

  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).pricing.when_present(10).hover
      on(AccountingPage).pricingGrid.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).pricing.when_present(10).hover
      on(AccountingPage).indices.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).pricing.when_present(10).hover
      on(AccountingPage).importPricingGrids.when_present(10).click

  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).products.when_present(10).click

  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).imports.when_present(10).hover
      on(AccountingPage).cash.when_present(10).hover
        on(AccountingPage).FNMAWholeLoanFiles.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).imports.when_present(10).hover
      on(AccountingPage).cash.when_present(10).hover
        on(AccountingPage).FNMAPurchaseAdviceFiles.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).imports.when_present(10).hover
      on(AccountingPage).MBS.when_present(10).hover
        on(AccountingPage).MBSDetailFile.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).imports.when_present(10).hover
      on(AccountingPage).MBS.when_present(10).hover
        on(AccountingPage).MBSSummaryFile.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).imports.when_present(10).hover
      on(AccountingPage).sellerLoanFiles.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).imports.when_present(10).hover
      on(AccountingPage).escrowsReceived.when_present(10).click

  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).purchaseAdviceReconciliation.when_present(10).click

  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).reports.when_present(10).hover
      on(AccountingPage).accountingReports.when_present(10).hover
        on(AccountingPage).escrowReports.when_present(10).click
    sleep(5)
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).reports.when_present(10).hover
      on(AccountingPage).accountingReports.when_present(10).hover
        on(AccountingPage).TSSAccountingReports.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).reports.when_present(10).hover
      on(AccountingPage).accountingReports.when_present(10).hover
        on(AccountingPage).purchaseAdviceReports.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).reports.when_present(10).hover
      on(AccountingPage).accountingReports.when_present(10).hover
        on(AccountingPage).purchaseAdviceReconciliationReports2.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).reports.when_present(10).hover
      on(AccountingPage).accountingReports.when_present(10).hover
        on(AccountingPage).capitalizationReport.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).reports.when_present(10).hover
      on(AccountingPage).accountingReports.when_present(10).hover
        on(AccountingPage).boardedEscrowReports.when_present(10).click
    on(AccountingPage).back

  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).reports.when_present(10).hover
      on(AccountingPage).secondaryReports.when_present(10).hover
        on(AccountingPage).activeContractReports.when_present(10).click
  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).reports.when_present(10).hover
      on(AccountingPage).secondaryReports.when_present(10).hover
        on(AccountingPage).boardingReports.when_present(10).click

  on(AccountingPage).TSS.when_present(10).click
    on(AccountingPage).reports.when_present(10).hover
      on(AccountingPage).TSSLoans.when_present(10).hover
        on(AccountingPage).generalLoanInfo.when_present(10).click
  sleep(5)
end


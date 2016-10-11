Given(/^You are in the Secondary Marketing page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).secondaryMarketing.when_present(10).click
end

And(/^you click on TSS$/) do
  sleep(3)
  expect(on(SecondaryMarketingPage).tSSSecondary.present?).to be_truthy
  on(SecondaryMarketingPage).tSSSecondary.when_present(10).click
end

And(/^you scroll down and hover over Reports$/) do
  sleep(1)
  on(SecondaryMarketingPage).reportsSecondary.when_present(10).hover
end

And(/^you scroll right and hover over Accounting Reports$/) do
  on(SecondaryMarketingPage).accountingReportsSecondary.when_present(10).hover
end

And(/^you scroll over and click on Boarded Escrow Reports$/) do
  on(SecondaryMarketingPage).boardedEscrowReportsSecondary.when_present(10).click
end

Then(/^you see Boarded Escrow Reports and not a 500 page$/) do
  sleep(2)
  expect(on(SecondaryEscrowPage).secondaryEscrowReports.present?).to be_truthy
end

=begin
And (/^I see Imports$/) do
  sleep(5)
  expect(on(SecondaryMarketingPage).imports2.present?).to be_truthy
end

When(/^I click on Imports$/) do
  on(SecondaryMarketingPage).imports2.when_present(10).click
end

Then(/^I get Imports results$/) do
  on(SecondaryMarketingPage).investorImports.when_present(10).click
  sleep(5)
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).dashboard.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
  sleep(1)
    on(SecondaryMarketingPage).sellers2.when_present(10).hover
      on(SecondaryMarketingPage).contracts.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
  on(SecondaryMarketingPage).sellers2.when_present(10).hover
      on(SecondaryMarketingPage).sellers3.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).pricing.when_present(10).hover
      on(SecondaryMarketingPage).pricingGrid.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).pricing.when_present(10).hover
      on(SecondaryMarketingPage).indices.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).pricing.when_present(10).hover
      on(SecondaryMarketingPage).adjusters.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).pricing.when_present(10).hover
      on(SecondaryMarketingPage).loanPrices.when_present(10).hover
  on(SecondaryMarketingPage).TSS.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).pricing.when_present(10).hover
      on(SecondaryMarketingPage).SRPPremiumGroups.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).pricing.when_present(10).hover
      on(SecondaryMarketingPage).importPricingGrids.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).products.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).reports.when_present(10).hover
      on(SecondaryMarketingPage).accountingReports2.when_present(10).hover
        on(SecondaryMarketingPage).escrowReports.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).reports.when_present(10).hover
      on(SecondaryMarketingPage).accountingReports2.when_present(10).hover
        on(SecondaryMarketingPage).TSSAccountingReports.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).reports.when_present(10).hover
      on(SecondaryMarketingPage).accountingReports2.when_present(10).hover
        on(SecondaryMarketingPage).purchaseAdviceReports.when_present(10).click
    on(SecondaryMarketingPage).TSS.when_present(10).click
      on(SecondaryMarketingPage).reports.when_present(10).hover
        on(SecondaryMarketingPage).accountingReports2.when_present(10).hover
          on(SecondaryMarketingPage).purchaseAdviceReconciliationReports.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).reports.when_present(10).hover
      on(SecondaryMarketingPage).accountingReports2.when_present(10).hover
        on(SecondaryMarketingPage).capitalizationReport.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).reports.when_present(10).hover
      on(SecondaryMarketingPage).accountingReports2.when_present(10).hover
        on(SecondaryMarketingPage).boardedEscrowReports.when_present(10).hover
  on(SecondaryMarketingPage).TSS.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).reports.when_present(10).hover
      on(SecondaryMarketingPage).secondaryReports2.when_present(10).hover
        on(SecondaryMarketingPage).activeContractReports.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).reports.when_present(10).hover
      on(SecondaryMarketingPage).secondaryReports2.when_present(10).hover
        on(SecondaryMarketingPage).boardingReports.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).reports.when_present(10).hover
      on(SecondaryMarketingPage).TSSLoans.when_present(10).hover
        on(SecondaryMarketingPage).generalLoanInfo.when_present(10).click
  on(SecondaryMarketingPage).TSS.when_present(10).click
    on(SecondaryMarketingPage).imports.when_present(10).hover
  sleep(1)
      on(SecondaryMarketingPage).escrowsReceived.when_present(10).click

  on(SecondaryMarketingPage).jumboOpsReports.when_present(10).click
  sleep(3)
=end


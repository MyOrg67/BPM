class SecondaryMarketingPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:tSSSecondary) {|b| b.link(text: "TSS")}

    #Selections within TSS drop down menu
    element(:dashboard) {|b| b.link(text: "Dashboard")}
    element(:sellers2) {|b| b.link(xpath: "//li[@id='tss_sellers_#']/a")}

      #Selections within Sellers drop down menu
      element(:contracts) {|b| b.link(text: "Contracts")}
      element(:sellers3) {|b| b.link(text: "Sellers")}

    element(:pricing) {|b| b.link(xpath: "//li[@id='tss_pricing_#']/a")}

      #Selections within Pricing drop down menu
      element(:pricingGrid) {|b| b.link(text: "Pricing Grid")}
      element(:indices) {|b| b.link(text: "Indices")}
      element(:adjusters) {|b| b.link(text: "Adjusters")}
      element(:loanPrices) {|b| b.link(xpath: "//li[@id='pricing_loan_prices_tss_loan_prices_path']/a")}
      element(:SRPPremiumGroups) {|b| b.link(text: "SRP Premium Groups")}
      element(:importPricingGrids) {|b| b.link(text: "Import Pricing Grids")}

    element(:products) {|b| b.link(text: "Products")}

    element(:reportsSecondary) {|b| b.link(xpath: "//div[@id='navigation-target']/ul/li/ul/li[5]/a")}

      #Selection within Reports drop down menu
      element(:accountingReportsSecondary) {|b| b.link(xpath: "//div[@id='navigation-target']/ul/li/ul/li[5]/ul/li/a")}

        #Selections within Accounting Reports drop down menu
        element(:escrowReports) {|b| b.link(text: "Escrow Reports")}
        element(:TSSAccountingReports) {|b| b.link(text: "TSS Accounting Reports")}
        element(:purchaseAdviceReports) {|b| b.link(text: "Purchase Advice Reports")}
        element(:purchaseAdviceReconciliationReports) {|b| b.link(text: "Purchase Advice Reconciliation Reports")}
        element(:capitalizationReport) {|b| b.link(text: "Capitalization Report")}
        element(:boardedEscrowReportsSecondary) {|b| b.link(text: "Boarded Escrow Reports")}

      element(:secondaryReports2) {|b| b.link(xpath: "//li[@id='reports_secondary_reports_#']/a")}

        #Selections within Secondary Reports drop down menu
        element(:activeContractReports) {|b| b.link(text: "Active Contract Reports")}
        element(:boardingReports) {|b| b.link(text: "Boarding Reports")}

      element(:TSSLoans) {|b| b.link(xpath: "//li[@id='reports_tss_loans_#']/a")}

        #Selections within TSS drop down menu
        element(:generalLoanInfo) {|b| b.link(text: "General Loan Info")}

    element(:imports) {|b| b.link(xpath: "//li[@id='tss_imports_#']/a")}

  element(:imports2) {|b| b.link(text: "Imports")}
    element(:investorImports) {|b| b.link(text: "Investor Imports")}

      #Selections within Imports drop down menu
      element(:escrowsReceived) {|b| b.link(text: "Escrows Received")}

  element(:jumboOpsReports) {|b| b.link(text: "Jumbo Ops Reports")}
end
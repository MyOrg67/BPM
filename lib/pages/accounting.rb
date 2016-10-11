class AccountingPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:scheduledFunding) {|b| b.link(text: "Scheduled Funding")}
  element(:commissions) {|b| b.link(text: "Commissions")}

    #Selections within Commissions drop down menu
    element(:reporting) {|b| b.link(xpath: "//li[@id='commissions_reporting_#']/a")}

      #Selections within Reporting drop down menu
      element(:branchCommissions) {|b| b.link(text: "Branch Commissions")}
      element(:commissionPlanDetails) {|b| b.link(text: "Commission Plan Details")}

    element(:branchCompensations) {|b| b.link(xpath: "//li[@id='commissions_branch_compensations_#']/a")}

      #Selecttions within Branch Compensations drop down menu
      element(:loans) {|b| b.link(text: "Loans")}
      element(:branches) {|b| b.link(text: "Branches")}
      element(:employees) {|b| b.link(text: "Employees")}

  element(:TSS) {|b| b.link(text: "TSS")}

    #Selections within TSS drop down menu
    element(:sellers) {|b| b.link(xpath: "//li[@id='tss_sellers_#']/a")}

      #Selections within Sellers drop down menu
      element(:contracts) {|b| b.link(text: "Contracts")}
      element(:sellers2) {|b| b.link(text: "Sellers")}

    element(:pricing) {|b| b.link(xpath: "//li[@id='tss_pricing_#']/a")}

      #Selections within Pricing drop down menu
      element(:pricingGrid) {|b| b.link(text: "Pricing Grid")}
      element(:indices) {|b| b.link(text: "Indices")}
      element(:importPricingGrids) {|b| b.link(text: "Import Pricing Grids")}

    element(:products) {|b| b.link(xpath: "//li[@id='tss_products_tss_products_path']/a")}
    element(:imports) {|b| b.link(xpath: "//li[@id='tss_imports_#']/a")}

      #Selections within Imports drop down menu
      element(:cash) {|b| b.link(xpath: "//li[@id='imports_cash_#']/a")}

        #Selections within Cash drop down menu
        element(:FNMAWholeLoanFiles) {|b| b.link(text: "FNMA Whole Loan Files")}
        element(:FNMAPurchaseAdviceFiles) {|b| b.link(text: "FNMA Purchase Advice Files")}

      element(:MBS) {|b| b.link(xpath: "//li[@id='imports_mbs_#']/a")}

        #Selections within MBS drop down menu
        element(:MBSDetailFile) {|b| b.link(text: "MBS Detail File")}
        element(:MBSSummaryFile) {|b| b.link(text: "MBS Summary File")}

      element(:sellerLoanFiles) {|b| b.link(text: "Seller Loan Files")}
      element(:escrowsReceived) {|b| b.link(text: "Escrows Received")}

    element(:purchaseAdviceReconciliation) {|b| b.link(text: "Purchase Advice Reconciliation")}
    element(:reports) {|b| b.link(xpath: "//li[@id='tss_reports_#']/a")}

      #Selections within Reports drop down menu
      element(:accountingReports) {|b| b.link(xpath: "//li[@id='reports_accounting_reports_#']/a")}

        #Selections within Accounting Reports drop down menu
        element(:escrowReports) {|b| b.link(text: "Escrow Reports")}
        element(:TSSAccountingReports) {|b| b.link(text: "TSS Accounting Reports")}
        element(:purchaseAdviceReports) {|b| b.link(text: "Purchase Advice Reports")}
        element(:purchaseAdviceReconciliationReports2) {|b| b.link(text: "Purchase Advice Reconciliation Reports")}
        element(:capitalizationReport) {|b| b.link(text: "Capitalization Report")}
        element(:boardedEscrowReports) {|b| b.link(text: "Boarded Escrow Reports")}

      element(:secondaryReports) {|b| b.link(xpath: "//li[@id='reports_secondary_reports_#']/a")}

        #Selections within Secondary Reports drop down menu
        element(:activeContractReports) {|b| b.link(text: "Active Contract Reports")}
        element(:boardingReports) {|b| b.link(text: "Boarding Reports")}

      element(:TSSLoans) {|b| b.link(xpath: "//li[@id='reports_tss_loans_#']/a")}

        #Selections for TSS Loans drop down menu
        element(:generalLoanInfo) {|b| b.link(text: "General Loan Info")}
  def back
    @browser.back
  end

  def hover
    assert_exists
    assert_has_input_devices_for :hover

    element_call { driver.action.move_to(@element).perform }
  end

  def refresh
    @browser.navigate.refresh
    @after_hooks.run
  end
end


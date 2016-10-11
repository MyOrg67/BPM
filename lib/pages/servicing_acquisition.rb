class ServicingAcquisitionPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:TSS) {|b| b.link(text: "TSS")}

    #Selections within TSS drop down menu
    element(:dashboard) {|b| b.link(text: "Dashboard")}
    element(:sellers4) {|b| b.link(xpath: "//li[@id='tss_sellers_#']/a")}

      #Selections within Sellers drop down menu
      element(:contracts) {|b| b.link(text: "Contracts")}
      element(:sellers5) {|b| b.link(text: "Sellers")}

    element(:pricing) {|b| b.link(xpath: "//li[@id='tss_pricing_#']/a")}

      #Selections within Pricing drop down menu
      element(:pricingGrid) {|b| b.link(text: "Pricing Grid")}
      element(:indices) {|b| b.link(text: "Indices")}
      element(:loanPrices) {|b| b.link(text: "Loan Prices")}
      element(:importPricingGrids) {|b| b.link(text: "Import Pricing Grids")}

    element(:products) {|b| b.link(text: "Products")}
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

      element(:blitz) {|b| b.link(xpath: "//li[@id='imports_blitz_#']/a")}

        #Selections within Blitz drop down menu
        element(:loanFileUploaded) {|b| b.link(text: "Loan File Uploaded")}

      element(:MERS) {|b| b.link(xpath: "//li[@id='imports_mers_#']/a")}

        #Selections within MERS drop down menu
        element(:MERSBatchApprovalDates) {|b| b.link(text: "MERS Batch Approval Dates")}

      element(:sellerLoanFiles) {|b| b.link(text: "Seller Loan Files")}
      element(:escrowsReceived) {|b| b.link(text: "Escrows Received")}

    element(:reconciliation) {|b| b.link(xpath: "//li[@id='tss_reconciliation_#']/a")}

      #Selections within Reconciliation drop down menu
      element(:pendingLoans) {|b| b.link(text: "Pending Loans")}
      element(:validatedLoans) {|b| b.link(text: "Validated Loans")}

    element(:purchaseAdviceReconciliation) {|b| b.link(text: "Purchase Advice Reconciliation")}
    element(:boarding) {|b| b.link(xpath: "//li[@id='tss_boarding_#']/a")}

      #Selections within Boarding drop down menu
      element(:selectLoans) {|b| b.link(text: "Select Loans")}
      element(:boardingFiles) {|b| b.link(text: "Boarding Files")}

  element(:reports) {|b| b.link(xpath: "//li[@id='tss_reports_#']/a")}

    #Selection within Reports drop down menu
    element(:accountingReports) {|b| b.link(xpath: "//li[@id='reports_accounting_reports_#']/a")}

      #Selections within Accounting Reports drop down menu
      element(:escrowReports) {|b| b.link(text: "Escrow Reports")}
      element(:TSSAccountingReports) {|b| b.link(text: "TSS Accounting Reports")}
      element(:purchaseAdviceReports) {|b| b.link(text: "Purchase Advice Reports")}
      element(:purchaseAdviceReconciliationReports) {|b| b.link(text: "Purchase Advice Reconciliation Reports")}
      element(:capitalizationReport) {|b| b.link(text: "Capitalization Report")}
      element(:boardedEscrowReports) {|b| b.link(text: "Boarded Escrow Reports")}

    element(:secondaryReports) {|b| b.link(xpath: "//li[@id='reports_secondary_reports_#']/a")}

      #Selections within Secondary Reports drop down menu
      element(:activeContractReports) {|b| b.link(text: "Active Contract Reports")}
      element(:boardingReports) {|b| b.link(text: "Boarding Reports")}
      element(:unfulfilledContracts) {|b| b.link(text: "Unfulfilled Contracts")}

    element(:TSSLoans) {|b| b.link(xpath: "//li[@id='reports_tss_loans_#']/a")}

      #Selections within TSS Loans drop down menu
      element(:generalLoanInfo) {|b| b.link(text: "General Loan Info")}

    #Selections within TSS drop down menu
    element(:letters) {|b| b.link(xpath: "//li[@id='tss_letters_#']/a")}

  element(:helloLetters) {|b| b.link(text: "Hello Letters")}
end




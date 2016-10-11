class ServicingPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:MERS) {|b| b.link(text: "MERS")}

    #Selections for MERS drop down menu
    element(:dataImports) {|b| b.link(xpath: "//li[@id='mers_data_imports_#']/a")}

      #Selections within Data Imports drop down menu
      element(:MERSMonthlyData) {|b| b.link(text: "Mers Monthly Data")}
      element(:DMIMonthlyData) {|b| b.link(text: "DMI Monthly Data")}
      element(:acquiredLoansSource) {|b| b.link(text: "Acquired Loans Source")}
      element(:DMIXrefImports) {|b| b.link(text: "DMI Xref Imports")}

    element(:reconciliation) {|b| b.link(text: "Reconciliation")}
    element(:biennialReviews) {|b| b.link(text: "Biennial Reviews")}
    element(:MERSOrganizations) {|b| b.link(text: "MERS Organizations")}
    element(:exceptionList) {|b| b.link(text: "Exception List")}

  element(:TSS) {|b| b.link(text: "TSS")}

    #Selections within TSS drop down menu
    element(:sellersHover) {|b| b.link(xpath: "//li[@id='tss_sellers_#']/a")}

      #Selections within Sellers drop down menu
      element(:contracts) {|b| b.link(text: "Contracts")}
      element(:sellersTab) {|b| b.link(text: "Sellers")}

    element(:products) {|b| b.link(text: "Products")}
    element(:boarding) {|b| b.link(xpath: "//li[@id='tss_boarding_#']/a")}

      #Selections within Boarding drop down menu
      element(:selectLoans) {|b| b.link(text: "Select Loans")}
      element(:generateBoardingFile) {|b| b.link(text: "Generate Boarding File")}

    element(:reports) {|b| b.link(xpath: "//li[@id='tss_reports_#']/a")}

      #Selections within Reports drop down menu
      element(:accountingReports) {|b| b.link(xpath: "//li[@id='reports_accounting_reports_#']/a")}

        #Selections within Accounting Reports drop down menu
        element(:purchaseAdviceReports) {|b| b.link(text: "Purchase Advice Reports")}
        element(:purchaseAdviceReconciliationReports) {|b| b.link(text: "Purchase Advice Reconciliation Reports")}

      element(:secondaryReports) {|b| b.link(xpath: "//li[@id='reports_secondary_reports_#']/a")}

        #Selections within Secondary Reports drop down menu
        element(:boardingReports) {|b| b.link(text: "Boarding Reports")}
        element(:unfulfilledContracts) {|b| b.link(text: "Unfulfilled Contracts")}

      element(:TSSLoans) {|b| b.link(xpath: "//li[@id='reports_tss_loans_#']/a")}

        #Selections within TSS Loans drop down menu
        element(:generalLoanInfo) {|b| b.link(text: "General Loan Info")}

    element(:imports) {|b| b.link(xpath: "//li[@id='tss_imports_#']/a")}

      #Selections within Imports drop down menu
      element(:blitz) {|b| b.link(xpath: "//li[@id='imports_blitz_#']/a")}

        #Selections within Blitz drop down menu
        element(:loanFileUploaded) {|b| b.link(text: "Loan File Uploaded")}

      element(:escrowsReceived) {|b| b.link(text: "Escrows Received")}

  element(:Fiserv) {|b| b.link(text: "Fiserv")}

    #Selections within Fiserv drop down menu
    element(:LOIFiles) {|b| b.link(text: "LOI Files")}
    element(:manualBoarding) {|b| b.link(text: "Manual Boarding")}
end

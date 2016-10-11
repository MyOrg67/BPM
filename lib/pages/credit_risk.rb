class CreditRiskPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:TSS) {|b| b.link(text: "TSS")}

    #Selections within TSS drop down menu
    element(:sellers2) {|b| b.link(xpath: "xpath=(//a[contains(@href, '/')])[2]")}

      #Selections within Sellers drop down menu
      element(:contracts) {|b| b.link(text: "Contracts")}
      element(:sellers) {|b| b.link(text: "Sellers")}

    element(:Reports) {|b| b.link(text: "Reports")}

      #Selections within Reports drop down menu
      element(:accountingReports) {|b| b.link(text: "Accounting Reports")}

        #Selections within Accounting Reports drop down menu
        element(:escrowReports) {|b| b.link(text: "Escrow Reports")}
        element(:TSSAccountingReports) {|b| b.link(text: "TSS Accounting Reports")}
        element(:purchaseAdviceReports) {|b| b.link(text: "Purchase Advice Reports")}
        element(:purchaseAdviceReconciliationReport) {|b| b.link(text: "Purchase Advice Reconciliation Report")}
        element(:capitalizationReports) {|b| b.link(text: "Capitalization Report")}

      element(:secondaryReports) {|b| b.link(text: "Secondary Reports")}

        #Selections within Secondary Reports drop down menu
        element(:activeContractReports) {|b| b.link(text: "Active Contract Reports")}
        element(:boardingReports) {|b| b.link(text: "Boarding Reports")}

      element(:TSSLoans) {|b| b.link(text: "TSS Loans")}

        #Selections for TSS Loans drop down menu
        element(:generalLoanInfo) {|b| b.link(text: "General Loan Info")}

    element(:floridaCondoPERSList) {|b| b.link(text: "Florida Condo PERS list")}
end


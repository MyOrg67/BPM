class LandingPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
    element(:scheduledFunding) {|b| b.link(text: "Scheduled Funding")}
    element(:Commissions) {|b| b.link(text: "Commissions")}

      #Selections within Commissions drop down menu
      element(:reporting) {|b| b.link(text: "Reporting")}
      element(:branchCommissions) {|b| b.link(text: "Branch Commissions")}

        #Selections within Reporting drop down menu
        element(:branchCommissions) {|b| b.link(text: "Branch Commissions")}
        element(:commissionPlanDetails) {|b| b.link(text: "Commission Plan Details")}

        #Selections within Branch Commissions drop down menu
        element(:loans) {|b| b.link(text: "Loans")}
        element(:branches) {|b| b.link(text: "Branches")}
        element(:employees) {|b| b.link(text: "Employees")}

    element(:TSS) {|b| b.link(text: "TSS")}

      #Selections within TSS drop down menu
      element(:sellers) {|b| b.link(text: "sellers")}

        #Selections within Sellers drop down menu
        element(:contracts) {|b| b.link(text: "Contracts")}
        element(:sellers2) {|b| b.link(text: "Sellers")}

      element(:pricing) {|b| b.link(text: "Pricing")}

        #Selections within Pricing drop down menu
        element(:pricingGrid) {|b| b.link(text: "Pricing Grid")}
        element(:indicies) {|b| b.link(text: "Indices")}
        element(:importPricingGrids) {|b| b.link(text: "Import Pricing Grids")}

      element(:products) {|b| b.link(text: "Products")}
      element(:imports) {|b| b.link(text: "Imports")}

        #Selections within Imports drop down menu
        element(:cash) {|b| b.link(text: "Cash")}

          #Selections within Cash drop down
          element(:FNMAHomeLoanFiles) {|b| b.link(text: "FNMA Home Loan Files")}
          element(:FNMAPurchaseAdviceFiles) {|b| b.link(text: "FNMA Purchase Advice Files")}

        element(:MBS) {|b| b.link(text: "MBS")}

          #Selections within MBS drop down menu
          element(:MBSDetailFiles) {|b| b.link(text: "MBS Details File")}
          element(:MBSSummaryFiles) {|b| b.link(text: "MBS Summary Files")}

        element(:sellerLoanFiles) {|b| b.link(text: "Seller Loan Files")}
        element(:escrowsReceived) {|b| b.link(text: "Escrow Receeived")}

        element(:purchaseAdviceReconciliation) {|b| b.link(text: "Purchase Advice Reconciliation")}

        element(:reports) {|b| b.link(text: "Reports")}

        #Selections within Reports drop down list
        element(:accountingReports) {|b| b.link(text: "Accounting Reports")}

          #Selections within Reports drop down menu
          element(:escrowReports) {|b| b.link(text: "Escrow Reports")}
          element(:TSSAccountingReports) {|b| b.link(text: "TSS Accounting Reports")}
          element(:purchaseAdviceReports) {|b| b.link(text: "Purchase Advice Reports")}
          element(:purchaseAdviceReconciliationReports) {|b| b.link(text: "Purchase Advice Reconciliation Reports")}
          element(:capitalizationReports) {|b| b.link(text: "Capitalization Reports")}
          element(:boardedEscrowReports) {|b| b.link(text: "Boarded Escrow Reports")}

        element(:secondaryReports) {|b| b.link(text: "Secondary Reports")}

          #Selections within Secondary Reports drop down menu
          element(:activeContractReports) {|b| b.link(text: "Active Contract Reports")}
          element(:boardingReports) {|b| b.link(text: "Boarding Reports")}

        element(:TSSLoans) {|b| b.link(text: "TSS Loans")}

          #Selection within TSS Loans drop down menu
          element(:generalLoanInfo) {|b| b.link(text: "General Loan Info")}

    element(:menus) {|b| b.element(text: "Menus")}

      #Selections within Menus drop down menu
      element(:accounting) {|b| b.element(text: "Accounting")}
      element(:systemAdministration) {|b| b.element(xpath: "//li[@id='navigation']/ul/li[2]/a")}
      element(:BPM) {|b| b.element(text: "BPM")}
      element(:clientServices) {|b| b.element(text: "Client Services")}
      element(:closing) {|b| b.link(text: "Closing")}
      element(:compliance) {|b| b.link(text: "Compliance")}
      element(:creditRisk) {|b| b.link(text: "Credit Risk")}
      element(:enterpriseComplianceLOB) {|b| b.link(text: "Enterprise Compliance LOB")}
      element(:funding) {|b| b.link(text: "Funding")}
      element(:humanResources) {|b| b.link(text: "Human Resources")}
      element(:initialDisclosure) {|b| b.link(text: "Initial Disclosure")}
      element(:lockDesk) {|b| b.link(text: "Lock Desk")}
      element(:operations) {|b| b.link(text: "Operations")}
      element(:PAC) {|b| b.link(text: "PAC")}
      element(:postClosing) {|b| b.link(text: "Post Closing")}
      element(:preClosing) {|b| b.link(text: "PreClosing")}
      element(:registration) {|b| b.link(text: "Registration")}
      element(:riskMgmt) {|b| b.link(text: "Risk Mgmt")}
      element(:sales) {|b| b.link(text: "Sales")}
      element(:secondaryMarketing) {|b| b.link(text: "Secondary Marketing")}
      element(:servicingAcquisition) {|b| b.link(text: "Servicing Acquisition")}
      element(:servicing) {|b| b.link(text: "Servicing")}
      element(:suspense) {|b| b.link(text: "Suspense")}
      element(:underwriting) {|b| b.link(text: "Underwriting")}
      element(:loanDelivery) {|b| b.link(text: "Loan Delivery")}
      element(:eveningShift) {|b| b.link(text: "Evening Shift")}
      element(:titleVendors) {|b| b.link(text: "Title Vendors")}
      element(:logout) {|b| b.link(text: "Logout")}

    element(:logout) {|b| b.link(text: "Logout")}
  end

#end
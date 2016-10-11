class CompliancePage < GenericBasePage
  include DataHelper
  include RSpec::Matchers

  #class HeaderPage < GenericBasePage
  element(:MERS) {|b| b.link(text: "MERS")}

    #Selections within MERS drop down menu
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

  element(:reg0) {|b| b.link(text: "Reg 0")}

    #Selections within Reg 0 drop down menu
    element(:reg0Reports) {|b| b.link(text: "Reg 0 Reports")}
    # Changed in CTMWEB-5273
    element(:CTExecutives) {|b| b.link(text: "CT Executives")}
    element(:MBExecutives) {|b| b.link(text: "MB Executives")}

  element(:HMDA) {|b| b.link(text: "HMDA")}

    #Selections within HMDA drop down menu
    element(:reportableEvents) {|b| b.link(text: "Reportable Events")}

      #Events within Reportable events
      element(:reportType) {|b| b.element(text: "Monthly")}
        element(:m) {|b| b.element(text: "Monthly")}
      element(:mPeriod) {|b| b.element(id: "m_period")}
        element(:month) {|b| b.element(text: "October")}
      element(:periodYear) {|b| b.element(xpath: "//div[@id='main']/div/div/div/form/select[4]")}
        element(:year) {|b| b.element(text: "2015")}
      element(:submit) {|b| b.element(xpath: "//div[@id='main']/div/div/div/form/input")}
      element(:importFromMortgagebot) {|b| b.element(text: "Import from MortgageBot")}
      element(:browse) {|b| b.element(id: "lar_file")}
      element(:open) {|b| b.element(xpath: "//div[@id='main']/div/div/div/form/div[2]/div/div/div/input")}
      element(:cancel) {|b| b.element(text: "Cancel")}
      element(:uploadFile) {|b| b.element(text: "Upload File")}
      element(:doTransformations) {|b| b.element(text: "Do Transformations")}


    element(:purchasedLoans) {|b| b.link(text: "Purchased Loans")}
    element(:investorCodes) {|b| b.link(text: "Investor Codes")}
    element(:exceptions) {|b| b.link(text: "Exceptions")}
    element(:exceptionReports) {|b| b.link(text: "Exception Reports")}
    element(:reportFilters) {|b| b.link(text: "Report Filters")}
    element(:quarterlyAnnualProcess) {|b| b.link(text: "Quarterly / Annual Process")}
    element(:dataChangeReport) {|b| b.link(text: "Data Change Report")}
    element(:HPMLLoansReport) {|b| b.link(text: "HPML Loans report")}
    element(:nonReportableLoans) {|b| b.link(text: "Non-reportable loans")}

  element(:lOCert) {|b| b.link(text: "LO Cert")}

    #Selections within LO Cert drop down menu
    element(:LOCertInquiries) {|b| b.link(text: "LO Cert Inquiries")}
    element(:LOCertIssues) {|b| b.link(text: "LO Cert Issues")}
    element(:historicLOCertInquiries) {|b| b.link(text: "Historical LO Cert Inquiries")}
    element(:historicalLOCertIssues) {|b| b.link(text: "Historical LO Cert Issues")}
    element(:historicalLOCertDenials) {|b| b.link(text: "Historical LO Cert Denials")}
    element(:noInitialDisclosure2BusinessDays) {|b| b.link(text: "No Initial Disclosure 2 Business Days")}
    element(:noInitialDisclosure3BusinessDays) {|b| b.link(text: "No Initial Disclosure 3 Business Days")}
    element(:historicNoInitialDisclosure2BusinessDays) {|b| b.link(text: "Historic No Initial Disclosure 2 Business Days")}
    element(:historicNoInitialDisclosure3BusinessDays) {|b| b.link(text: "Historic No Initial Disclosure 3 Business Days")}
    element(:preRegBLOCertHistory) {|b| b.link(text: "Pre-RegB LO Cert History")}
    element(:fortyFiveDaysNoIntentToProceed) {|b| b.link(text: "45 Days No Intent to Proceed")}
    element(:preTRIDLOCertHistory) {|b| b.link(text: "Pre-TRID LO Cert History")}

  element(:weeklyRegBReports) {|b| b.link(text: "Weekly Reg B Reports")}

    #Selections within Weekly Reg B Reports drop down menu
    element(:noUWStatus) {|b| b.link(text: "No UW Status")}
    element(:UWSubmitted) {|b| b.link(text: "UW Submitted")}
    element(:UWStatus) {|b| b.link(text: "UW Status")}
    element(:counterofferReport) {|b| b.link(text: "Counteroffer Report")}
    element(:historicNoUWStatus) {|b| b.link(text: "Historic No UW Status")}
    element(:historicUWSubmitted) {|b| b.link(text: "Historic UW Submitted")}
    element(:historicUWStatus) {|b| b.link(text: "Historic UW Status")}

end
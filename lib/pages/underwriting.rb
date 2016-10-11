class UnderwritingPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:underwriter) {|b| b.link(text: "Underwriter")}

    #Selection within Underwriter drop down menu
    element(:validationFinalApproval) {|b| b.link(text: "Validation / Final Approval")}
    element(:productData) {|b| b.link(text: "Product Data")}
    element(:productGuidelines) {|b| b.link(text: "Product Guidelines")}
    element(:bulkValidationReport) {|b| b.link(text: "Bulk Validation Report")}
    element(:floridaCondoPERSlist) {|b| b.link(text: "Florida Condo PERS list")}

  element(:creditSuisseExports) {|b| b.link(text: "Credit Suisse Exports")}
  element(:jumboOpsReports) {|b| b.link(text: "Jumbo Ops Reports")}
  element(:UWDashboard) {|b| b.link(text: "UW Dashboard")}
  element(:underwritingReports) {|b| b.link(text: "Underwriting Reports")}

    #Selections within Underwriting Reports
    element(:UWSubmitted) {|b| b.link(xpath: "//li[@id='underwriting_reports_uw_submitted_reg_b_uw_submitted_path']/a")}
    element(:UWFileReceived) {|b| b.link(text: "UW File Received Assigned")}
    element(:UWFileReceivedNotAssigned) {|b| b.link(text: "UW File Received Not Assigned")}

    #Changed CTMWEB-5197
    element(:UWReceived) {|b| b.link(text: "UW Received Assigned")}
    element(:UWReceivedNotAssigned) {|b| b.link(text: "UW Received Not Assigned")}
    element(:conditionsPendingReview) {|b| b.link(xpath: "//li[@id='underwriting_reports_conditions_pending_review_reg_b_uw_conditions_pending_review_path']/a")}
    element(:pendingSecondReview) {|b| b.link(xpath: "//li[@id='underwriting_reports_pending_second_review_reg_b_uw_pending_second_review_path']/a")}
    element(:fileIncomplete) {|b| b.link(xpath: "//li[@id='underwriting_reports_file_incomplete_reg_b_file_incomplete_conditions_path']/a")}
    element(:waivedConditions) {|b| b.link(xpath: "//li[@id='underwriting_reports_waived_conditions_reg_b_waived_conditions_path']/a")}
end

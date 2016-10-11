class ClosingPage < GenericBasePage
  include DataHelper

  element(:validations) {|b| b.link(text: "Validations")}
  element(:loanModelers) {|b| b.link(text: "Loan Modelers")}
  element(:floridaCondoPERSlist) {|b| b.element.link(text: "Florida Condo PERS list")}
  element(:reports) {|b| b.link(text: "Reports")}

    #Selections within Reports drop down menu
    element(:monthlyDefectReport) {|b| b.link(text: "Monthly Defect Report")}
    element(:monthToMonthComparisonReport) {|b| b.link(xpath: "//li[@id='reports_month_to_month_comparision_report_comparision_report_closing_settlement_agent_audits_path']/a")}
    element(:closingChecklistReport) {|b| b.link(text: "Closing Checklist Report")}

end
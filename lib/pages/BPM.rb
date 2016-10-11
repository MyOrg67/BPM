class BPMPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:statisticReports) {|b| b.link(text: "Statistic Reports")}

    #Selections within Statistic Reports drop down menu
    element(:categorizedValidationErrors) {|b| b.link(text: "Categorized Validation Errors")}
    element(:generalAssignedUnderwriterData) {|b| b.link(text: "General Assigned Underwriter Data")}
    element(:generalLoanData) {|b| b.link(text: "General Loan Data")}
end



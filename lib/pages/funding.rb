class FundingPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:fundingChecklist) {|b| b.link(text: "Funding Checklist")}

  element(:reports) {|b| b.link(text: "Reports")}

    #Selections within Reports drop down menu
    element(:fundingChecklistReport) {|b| b.link(text: "Funding Checklist Report")}
    element(:comparisonReport) {|b| b.link(text: "Comparision Report")}

end
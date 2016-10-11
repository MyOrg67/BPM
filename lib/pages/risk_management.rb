class RiskManagementPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:MERS2) {|b| b.link(xpath: "//li[@id='risk_management_mers_#']/a")}

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

  element(:reg0) {|b| b.link(xpath: "//li[@id='risk_management_reg_0_#']/a")}

    #Selections within Reg 0 drop down menu
    element(:reg0Reports) {|b| b.link(text: "Reg 0 Reports")}
    element(:CTExecutives) {|b| b.link(text: "CT Executives")}
end


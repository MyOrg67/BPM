class PACPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:creditSuisseExports) {|b| b.link(text: "Credit Suisse Exports")}
  element(:jumboOpsReports) {|b| b.link(text: "Jumbo Ops Reports")}

end
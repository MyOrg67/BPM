class OperationsPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:originatorStatus) {|b| b.link(text: "Originator Status")}
  element(:institutionStatus) {|b| b.link(text: "Institution Status")}

end
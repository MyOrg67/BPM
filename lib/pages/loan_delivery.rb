class LoanDeliveryPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:redwood) {|b| b.link(text: "Redwood")}
  element(:FNMAPool) {|b| b.link(text: "FNMA Pool")}
  element(:FNMACash) {|b| b.link(text: "FNMA Cash")}
  element(:GNMAPool) {|b| b.link(text: "GNMA Pool")}
  element(:FHLMCPool) {|b| b.link(text: "FHLMC Pool")}
  element(:FHLMCCash) {|b| b.link(text: "FHLMC Cash")}
  element(:FHLMCIndividual) {|b| b.link(text: "FHLMC Individual")}
  element(:FHLBPool) {|b| b.link(text: "FHLB Pool")}
end

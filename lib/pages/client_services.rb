class ClientServicesPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:reports) {|b| b.link(text: "Reports")}

  #Selections within Reports drop down menu
  element(:conditionsPendingReview) {|b| b.link(text: "Conditions Pending Review")}
end
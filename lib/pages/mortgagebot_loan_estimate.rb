class MortgagebotLoanEstimatePage < GenericBasePage
  include DataHelper

  #Loan number will be used to print loan number after it is created
  element(:loanEstimate) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div/div/div/ul/li[1]/a")}
  element(:disclosureDeliveryMethod) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div/div/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div[2]/div[1]/div/select")}
  element(:disclosureDeliveryMethodActual) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div/div/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div[2]/div[1]/div/select/option[3]")}
  element(:borrowerReceivedDate) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div/div/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div[2]/div[2]/div/div/input")}
  element(:borrowerProvidedIntentToProceed) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div/div/div/div/div[1]/div/div/div/div[3]/div/div/div/div/div[2]/div[1]/div[1]/div/div/input")}
  element(:methodProvided) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div/div/div/div/div[1]/div/div/div/div[3]/div/div/div/div/div[2]/div[1]/div[2]/div/select")}
  element(:methodProvidedActual) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div/div/div/div/div[1]/div/div/div/div[3]/div/div/div/div/div[2]/div[1]/div[2]/div/select/option[2]")}
  element(:estimatedClosingDate) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div/div/div/div/div[1]/div/div/div/div[4]/div/div/div/div/div[2]/div[3]/div[1]/div/div/input")}
  element(:fees) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[1]/div[1]/div/div/ul/li[2]/a")}

end

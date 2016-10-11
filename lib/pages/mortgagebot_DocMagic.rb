class MortgagebotDocMagicPage < GenericBasePage
  include DataHelper

  #Loan number will be used to print loan number after it is created
  element(:altLenderCode) {|b| b.element(xpath: "/html/body/div/table/tbody/tr/td/table/tbody/tr/td/form/div/table/tbody/tr[5]/td/table/tbody/tr[6]/td/table/tbody/tr[4]/td[2]/input")}
  element(:eDisclosure) {|b| b.element(name: "eDisclosure")}
  element(:clickSign) {|b| b.element(name: "clickSign")}
  element(:submit) {|b| b.element(name: "submit")}
  element(:cancel) {|b| b.element(name: "cancel")}
  element(:disclosureDeliveryMethod) {|b| b.element(xpath: "/html/body/div[4]/div[2]/div/form[1]/div/div/div/div[2]/div/div[2]/div/div[1]/div/select")}
  element(:disclosureDeliveryMethodActual) {|b| b.element(xpath: "/html/body/div[4]/div[2]/div/form[1]/div/div/div/div[2]/div/div[2]/div/div[1]/div/select/option[2]")}
  element(:borrowerReceivedDate) {|b| b.element(xpath: "/html/body/div[5]/div[2]/div/form[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div/div/input")}
  element(:discloseAndSubmit) {|b| b.element(xpath: "/html/body/div[5]/div[3]/div/button[3]")}
  element(:ok) {|b| b.element(xpath: "/html/body/div[7]/div[3]/div/button[2]")}

end

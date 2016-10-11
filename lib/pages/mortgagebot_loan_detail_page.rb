class MortgagebotLoanDetailPage < GenericBasePage
  include DataHelper

  #Header
  element(:notes) {|b| b.element(id: "add-note")}
  element(:notepad) {|b| b.element(id: "view-note")}

    #Notepad popup
    element(:noteVerify) {|b| b.element(xpath: "/html/body/section/section/table/tbody/tr[1]/td[3]/div")}

    #Notes pop-up
    element(:message) {|b| b.element(id: "Message")}
    element(:saveButton) {|b| b.button(xpath: "/html/body/div[4]/div[2]/div/button[2]")}

  #Loan number will be used to print loan number after it is created
  element(:loanNumber) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/h2")}
  element(:formsAndDocs) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[1]/a")}
  element(:oneOOThree) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[1]/ul/li[3]/a")}
  element(:oneOOThreeItemized) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[1]/ul/li[4]/a")}
  element(:loanEstimate) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[1]/ul/li[2]/a")}

    #Inside Forms and Docs
    element(:UWConditionsDecisions) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[1]/ul/li[17]/a")}

      #Inside UW Conditions/Decisions
      element(:underwritingTemplate) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr[1]/td[2]/select")}

        #Drop down values
        element(:conventionalPurchase) {|b| b.element(value: "22")}

  element(:disclosureDeliveryMethod) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div[1]/div/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div[2]/div[1]/div/select")}
  element(:disclosureDeliveryMethodActual) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div/div/div/div/div[1]/div/div/div/div[2]/div/div/div/div/div[2]/div[2]/div[1]/div/select/option[3]")}

  element(:borrowerProvidedIntentToProceed) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div[1]/div/div/div/div[1]/div/div/div/div[3]/div/div/div/div/div[2]/div[1]/div[1]/div/div/input")}
  element(:methodProvided) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div[1]/div/div/div/div[1]/div/div/div/div[3]/div/div/div/div/div[2]/div[1]/div[2]/div/select")}
  element(:methodProvidedActual) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div[1]/div/div/div/div[1]/div/div/div/div[3]/div/div/div/div/div[2]/div[1]/div[2]/div/select/option[2]")}
  element(:estimatedClosingDate) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div[1]/div/div/div/div[1]/div/div/div/div[4]/div/div/div/div/div[2]/div[3]/div[1]/div/div/input")}

  element(:fees) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/form[1]/div[1]/div/div/ul/li[2]/a")}

  element(:save) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[2]/div/div/div/div[2]/div/button[1]")}
  element(:disclose) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[2]/div/div/div/div[1]/div/div/button[1]")}
  element(:popup) {|b| b.element(xpath: "/html/body/div[4]/div[1]/span")}
  element(:ok) {|b| b.element(xpath: "/html/body/div[3]/div[3]/div/button[2]")}

  element(:docPackages) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[2]/a")}
  element(:orderDocumentPackage) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[2]/ul/li/a")}

  element(:documentPackageType) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[1]/div[1]/div[2]/div/select")}
  element(:documentPackageTypeActual) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[1]/div[1]/div[2]/div/select/option[4]")}
  element(:altLenderCode) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[1]/div[2]/div/div[3]/div/div[4]/div/div/input")}
  element(:eDiclosure) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[1]/div[2]/div/div[4]/div[1]/span/label")}
  element(:clickSign) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[1]/div[2]/div/div[4]/div[3]/span/label")}
  element(:submit) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[2]/div/div/div/div[2]/button[2]")}

  element(:disclosureDeliveryMethodTwo) {|b| b.element(xpath: "/html/body/div[3]/div[2]/div/form[1]/div/div/div/div[2]/div/div[2]/div/div[1]/div/select")}
  element(:disclosureDeliveryMethodTwoActual) {|b| b.element(xpath: "/html/body/div[3]/div[2]/div/form[1]/div/div/div/div[2]/div/div[2]/div/div[1]/div/select/option[2]")}
  element(:borrowerReceievedDate) {|b| b.element(xpath: "/html/body/div[3]/div[2]/div/form[1]/div/div/div/div[2]/div/div[2]/div/div[2]/div/div/input")}

  element(:discloseAndSubmit) {|b| b.element(xpath: "/html/body/div[3]/div[3]/div/button[2]")}

  element(:okTwo) {|b| b.element(xpath: "/html/body/div[6]/div[3]/div/button[2]")}
  element(:successfulDisclosure) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[2]/ul/li/a/i")}
end

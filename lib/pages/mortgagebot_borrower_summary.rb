class MortgagebotBorrowerSummaryPage < GenericBasePage
  include DataHelper

#Borrower Summary - Borrower Information
  element(:firstName) {|b| b.text_field(id: "isBorw1_fName_iii")}
  element(:lastName) {|b| b.text_field(id: "isBorw1_lName_iii")}
  element(:dob) {|b| b.text_field(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[4]/tr[4]/td[2]/input")}
  element(:ssn) {|b| b.text_field(id: "isBorw1_ssn_iii")}
  element(:streetAddress) {|b| b.text_field(id: "isBorw1_addressType2_borwAddr_iii")}
  element(:city) {|b| b.text_field(id: "isBorw1_addressType2_borwCity_iii")}
  element(:state) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[4]/tr[16]/td[2]/select")}
  element(:zipCode) {|b| b.text_field(id: "isBorw1_addressType2_borwZip_iii")}

  #Borrower Summary - Loan Information
  element(:salesPrice) {|b| b.text_field(id: "purPrice_vii")}
  element(:appraisalPrice) {|b| b.text_field(id: "apprValue_xi")}
  element(:baseLoanAmount) {|b| b.text_field(id: "BaseLoanAmount")}
  element(:propertyType) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[2]/td[3]/select")}
    #Drop down selection for Property Type
    element(:detached) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[2]/td[3]/select/option[5]")}
  element(:propertyWillBe) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[3]/select")}
    #Drop down selection for Property Will Be
    element(:primaryResidence) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[3]/select/option[3]")}
  element(:purposeOfLoan) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[4]/select")}
    #Drop down selection for Purpose of Loan
    element(:purchase) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[4]/select/option[4]")}
  element(:product) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select")}
    #Drop down selection for Product
    element(:productType) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select/option[22]")}

  element(:lienType) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[3]/select")}
    #Drop down selection Lien Type
    element(:firstMortgage) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[3]/select/option[2]")}
  element(:mortgageAppliedFor) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[4]/select")}
    #Drop down selection for Mortgage Applied For
    element(:conventional) {|b| b.element(xpath: "/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[4]/select/option[2]")}
  element(:numberOfMonths) {|b| b.text_field(name: "noMonth_i")}
  element(:rate) {|b| b.text_field(name: "intRate_i")}
  element(:saveClose) {|b| b.button(name: "SaveClose")}
  element(:cancel) {|b| b.button(name: "Cancel")}

  element(:continueToCreateANewLoan) {|b| b.button(name: "applyId")}
  element(:saveCloseTwo) {|b| b.button(value: "Save/Close")}


end

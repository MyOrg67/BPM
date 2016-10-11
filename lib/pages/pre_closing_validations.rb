class PreClosingValidationPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:enterLoanNumber) {|b| b.text_field(xpath: "/html/body/div[4]/div/div/div/div/form/input[1]")}
  element(:displayLoan) {|b| b.button(text: "Display Loan")}

 end
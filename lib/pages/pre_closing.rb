class PreClosingPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:preClosingValidations) {|b| b.link(text: "PreClosing Validations")}
  element(:enterLoanNumber) {|b| b.text_field(text: "Enter a loan number")}
  element(:displayLoan) {|b| b.link(text: "Display Loan")}

  element(:compensationAcceptance) {|b| b.element(text: "Compensation Acceptance")}
  element(:maxCashBackAcceptance) {|b| b.element(text: "Max Cash Back Acceptance")}
end

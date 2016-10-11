class UnderwritingValidationPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:enterLoanNumber) {|b| b.text_field(xpath: "/html/body/div[4]/div/div/div/div/form/input[1]")}
  element(:displayLoan) {|b| b.button(text: "Display Loan")}

  element(:validationFinalApproval) {|b| b.element(xpath: "/html/body/div[1]/div/div/div/div/ul/li[1]/ul/li[1]/a")}

  element(:compensationAcceptance) {|b| b.element(xpath: "/html/body/div[3]/div/div/div/div/div/div[2]/div/div/div[2]/div[23]/flow-thingy-result/div/span[1]/span/span[2]")}
  element(:maxCashBackAcceptance) {|b| b.element(xpath: "/html/body/div[4]/div/div/div/div/div[2]/span/div/div[1]/div[21]/flow-thingy-result/div/span[1]/span/span[2]")}

  element(:logOut) {|b| b.element(text: "Logout")}

end
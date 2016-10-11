class MortgagebotLoanDashboardPage < GenericBasePage
  include DataHelper

  #Loan number will be used to print loan number after it is created
  element(:loanNumber) {|b| b.element(xpath: "/html/body/div[1]/div/div[2]/section/div/h2")}

  #Forms and Docs
  element(:formsDocs) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[1]/a")}

  #1003
  element(:tenZeroThree) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[1]/ul/li[4]/a")}

  #Loan Estimate
  element(:loanEstimate) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[1]/ul/li[2]/a")}

  #Doc Packages
  element(:docPackages) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[2]/a")}
  element(:initialDisclosureDocMagic) {|b| b.element(xpath: "/html/body/div[1]/div/div[1]/nav/div[2]/div[1]/ul/li[2]/ul/li[2]/a")}



end

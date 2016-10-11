class PreClosingReportPage < GenericBasePage
  include DataHelper

#class HeaderPage < GenericBasePage
  element(:compensationAcceptance) {|b| b.element(xpath: "//div[@id='main']/div/div/div/div/div[2]/div/div/div[23]/flow-thingy-result/div/span/span/span[2]")}
  element(:maxCashBackAcceptance) {|b| b.element(xpath: "//div[@id='main']/div/div/div/div/div[2]/div/div/div[24]/flow-thingy-result/div/span/span/span[2]")}
  element(:logOut) {|b| b.element(text: "Logout")}
end
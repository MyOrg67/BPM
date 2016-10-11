class MortgagebotFeesPage < GenericBasePage
  include DataHelper

  element(:save) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[2]/div/div/div/div[2]/div/button[1]")}
  element(:disclose) {|b| b.element(xpath: "/html/body/div/div/div[2]/section/div/form[2]/div/div/div/div[1]/div/div/button[1]")}
  element(:ok) {|b| b.element(xpath: "/html/body/div[3]/div[3]/div/button[2]")}




end

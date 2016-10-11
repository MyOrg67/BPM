class MortgagebotAutomationHomePage < GenericBasePage

  include DataHelper

  page_url "https://accessmbmortgage.test.mortgagebotlos.com/Login?ReturnUrl=%2f"

  element(:userName) {|b| b.text_field(id: "UserName")}
  element(:nextButton) {|b| b.button(id: "Next")}

end
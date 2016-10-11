class AutomationHomePage < GenericBasePage

  page_url "https://ctmauth.corp.ctmtg.com/login?service=http%3A%2F%2Fctmweb-qa%2Fportals"

  #For IE to bypass the certificate
  element(:overridelink) {|b| b.element(id: "overridelink")}

  element(:username) {|b| b.text_field(id: "username")}
  element(:password) {|b| b.text_field(id: "password")}
  element(:login) {|b| b.button(id: "login-submit")}
end
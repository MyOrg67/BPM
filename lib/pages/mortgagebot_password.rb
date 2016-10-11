class MortgagebotPasswordPage < GenericBasePage
  include DataHelper

  element(:securityPassword) {|b| b.text_field(id: "Password")}
  element(:logIn) {|b| b.element(xpath: "//form[@id='login-form']/footer/button")}

  def securitypassword_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    securityPassword.set data_yml_hash['securitypassword']

    logIn.click
  end
end

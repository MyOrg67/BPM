class MortgagebotLoginPage < GenericBasePage
  include DataHelper

  element(:userName) {|b| b.text_field(id: "UserName")}
  element(:nextButton) {|b| b.button(text: "Next")}

  def mortgagebotlogin_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    userName.set data_yml_hash['userName']
    nextButton.click
  end

end


class LoginPage < GenericBasePage
  include DataHelper

  element(:username) {|b| b.text_field(id: "username")}
  element(:password) {|b| b.text_field(id: "password")}
  element(:login) {|b| b.button(id: "login-submit")}

  def login_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    username.set data_yml_hash['username']
    password.set data_yml_hash['password']
    login.click
  end

end
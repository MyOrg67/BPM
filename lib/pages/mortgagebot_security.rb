class MortgagebotSecurityPage < GenericBasePage
  include DataHelper

  element(:securityQuestionOne) {|b| b.label(text: "In what city was your high school?")}
  element(:securityQuestionTwo) {|b| b.label(text: "What is the name of your favorite pet?")}
  element(:securityQuestionThree) {|b| b.label(text: "What is your mother's maiden name?")}
  element(:securityAnswer) {|b| b.text_field(id: "SecurityAnswer")}

  element(:nextButton) {|b| b.button(text: "Next")}

  def securityone_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    securityAnswer.set data_yml_hash['securityOne']
    nextButton.click
  end

  def securitytwo_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    securityAnswer.set data_yml_hash['securitytwo']
    nextButton.click
  end

  def securitythree_yml(options={})
      options = options.with_indifferent_access
      options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
      securityAnswer.set data_yml_hash['securitythree']
      nextButton.click
  end

end

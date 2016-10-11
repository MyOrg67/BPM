class ClosingLoanModelersPage < GenericBasePage
  include DataHelper

  element(:displayLoan) {|b| b.button(text: "Display Loan")}
  element(:loanID) {|b| b.text_field(id: "loan_id")}
  element(:message) {|b| b.element(text: "Pre-Trid loans are no longer supported in loan modelers. Calculations may go wrong.")}

  def loan_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    loanID.set data_yml_hash['loannumber']
    displayLoan.click
  end

  def loan2_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    loanID.set data_yml_hash['loannumber2']
    displayLoan.click
  end

  def loan3_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    loanID.set data_yml_hash['loannumber3']
    displayLoan.click
  end
end
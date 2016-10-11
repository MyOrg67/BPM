class LoanValidationPage < GenericBasePage
  include DataHelper

  element(:validations) {|b| b.link(text: "Validations")}
  element(:loannumber) {|b| b.element(id: "loan_id")}
  element(:displayloan) {|b| b.button(value: "Display Loan")}

  element(:areTaxesDue) {|b| b.element(xpath: "//div[@id='main']/div/div/div/div/div[2]/closing-checklist/form/table[7]/tbody/tr[14]/td[2]/span/select")}
  sleep(1)
  element(:countyTax) {|b| b.element(text: "County Tax")}
  element(:cityTax) {|b| b.element(text: "City Tax")}
  element(:villageTax) {|b| b.element(text: "Village Tax")}
  element(:otherTax) {|b| b.element(text: "Other Tax")}
  element(:sectionTenExists) {|b| b.element(text: "10. Additional CD Updates/ Information Applicable")}
  element(:sentToBorrowerDate) {|b| b.element(:xpath, "//div[@id='main']/div/div/div/div/div[2]/closing-checklist/form/table[10]/tbody/tr/td[2]/span/select")}
  element(:amountOfToleranceCure) {|b| b.element(:xpath, "//div[@id='main']/div/div/div/div/div[2]/closing-checklist/form/table[10]/tbody/tr[28]/td[2]/span/input")}
  element(:LiborARM) {|b| b.element(:xpath, "//div[@id='main']/div/div/div/div/div[2]/closing-checklist/form/table[2]/tbody/tr[4]/td[2]/span/select")}
  element(:ARMCaps) {|b| b.element(:xpath, "//div[@id='main']/div/div/div/div/div[2]/closing-checklist/form/table[2]/tbody/tr[5]/td[2]/span/select")}
  element(:HOIHO6) {|b| b.element(:xpath, "//div[@id='main']/div/div/div/div/div[2]/closing-checklist/form/table[6]/tbody/tr[10]/td[2]/span/select")}

  def login_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    loannumber.to_subtype.clear
    loannumber.send_keys data_yml_hash['loannumber2']
    displayloan.click
  end
end
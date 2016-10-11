class ClosingValidationsPage < GenericBasePage
  include DataHelper

  element(:search) {|b| b.button(text: "Search")}
  element(:validationLoanID) {|b| b.text_field(id: "loan_id")}
  element(:onlyDiscloseViaCD) {|b| b.element(css: "div.btn.btn-inverse")}
  element(:allowLEDisclosures) {|b| b.element(xpath: "//div[@id='main']/div/div/div/div/div/div[2]/div/div/div/span/div[2]/div")}
  element(:message) {|b| b.element(xpath: "(//div[@id='flash']/div)[2]")}
  element(:enterLoanNumber) {|b| b.text_field(id: "loan_id")}
  element(:displayLoan) {|b| b.element(text: "Search")}
  element(:compensationAcceptance) {|b| b.element(xpath: "/html/body/div[3]/div/div/div/div/div/div[2]/div/div/div[2]/div[23]/flow-thingy-result/div/span[1]/span/span[2]")}
  element(:maxCashBackAcceptance) {|b| b.element(xpath: "/html/body/div[3]/div/div/div/div/div/div[2]/div/div/div[2]/div[24]/flow-thingy-result/div/span[1]/span/span[2]")}

  def loan4_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
    validationLoanID.set data_yml_hash['loannumber4']
    search.click
  end

end
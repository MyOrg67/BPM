class MortgagebotLandingPage < GenericBasePage
  include DataHelper

  #Header selections
  element(:create) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[1]/a")}
    #Drop down selections within Create
    element(:createLoan) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[1]/ul/li[1]/a")}

  #Header selections
  element(:originator) {|b| b.element(name: "instUser_Input")}
  element(:action) {|b| b.element(name: "newLoanAction")}
  element(:submit) {|b| b.element(name: "mysubmit")}
  element(:cancel) {|b| b.element(name: "Cancel")}

    element(:importALoan) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[1]/ul/li[2]/a")}
    element(:quickLock) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[1]/ul/li[3]/a")}
    element(:scenarioPricer) {|b| b.element(text: "/html/body/header/section/div/div[2]/nav/ul/li[1]/ul/li[4]/a")}

  element(:pipeline) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[2]/a")}
    #Drop down selections within Pipeline
    element(:pipelineSearch) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[2]/ul/li[1]/a")}
    element(:loanPipeline) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[2]/ul/li[2]/a")}
    element(:complianceAlerts) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[2]/ul/li[3]/a")}

      #Popup Pipeline Search fields
      element(:keywords) {|b| b.element(id: "LoanNumber_TextMatchCriteria_Keywords")}
      element(:search) {|b| b.element(xpath: "/html/body/div[4]/div[2]/div/button[2]")}

  def mortgagebotsearch_yml(options={})
    options = options.with_indifferent_access
    options.to_hash.reverse_merge! keywords_yml_hash.with_indifferent_access
    keywords.set keywords_yml_hash['keywords']
    search.click
  end

        #Searched Loan return details
        element(:loanDetails) {|b| b.element(xpath: "/html/body/div[1]/div/div/section/section/table/tbody/tr[1]/td[1]")}

  element(:rates) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[3]/a")}

  element(:reports) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[4]/a")}
    #Drop down selections within reports
    element(:operations) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[4]/ul/li[1]/a")}
    element(:secondary) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[4]/ul/li[2]/a")}
    element(:services) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[4]/ul/li[3]/a")}
    element(:compliance) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[4]/ul/li[4]/a")}
    element(:accounting) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[4]/ul/li[5]/a")}
    element(:postClosing) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[4]/ul/li[6]/a")}
    element(:administration) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[4]/ul/li[7]/a")}

  element(:bulkDelivery) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[5]/a")}
    #Drop down selections within Bulk Delivery
    element(:bulkLoanUpdates) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[5]/ul/li[1]/a")}
    element(:trades) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[5]/ul/li[2]/a")}
    element(:fannieULDDMBS) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[5]/ul/li[3]/a")}
    element(:fannieULDDBulkWholeLoan) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[5]/ul/li[4]/a")}

  element(:resources) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[6]/a")}
    #Drop down selections within Resources
    element(:resourceCenter) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[6]/ul/li[1]/a")}
    element(:productsGuidelines) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[6]/ul/li[2]/a")}
    element(:calculators) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[6]/ul/li[3]/a")}
    element(:links) {|b| b.element(xpath: "/html/body/header/section/div/div[2]/nav/ul/li[6]/ul/li[4]/a")}
  element(:saveClose) {|b| b.button(name: "SaveClose")}
end
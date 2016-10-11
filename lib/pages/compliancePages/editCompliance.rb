class EditCompliancePage < GenericBasePage
  page_url "http://ctmweb-qa/compliance/hmda/loan_compliance_events/1057194/edit"

  #include DataHelper
  #include RSpec::Matchers

  element(:loanComplianceEventPreappr) {|b| b.element(id: "loan_compliance_event_preappr")}
end

class RegistrationPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:registrationValidation) {|b| b.link(xpath: "//li[@id='registration_registration_validation_registration_validations_path']/a")}
  element(:forcedRegistrations) {|b| b.link(xpath: "//li[@id='registration_forced_registrations_registration_forced_registrations_path']/a")}

  element(:reports) {|b| b.link(xpath: "//li[@id='registration_reports_#']/a")}

    #Selections within Registration drop down menu
    element(:FCRADaily) {|b| b.link(xpath: "//li[@id='registration_forced_registrations_registration_forced_registrations_path']/a")}
    element(:dailyValidationPASSFAILReport) {|b| b.link(xpath: "//li[@id='reports_daily_validation_pass/fail_report_daily_validation_pass_fail_report_path']/a")}
    element(:monthlyValidationPASSFAILReport) {|b| b.link(xpath: "//li[@id='reports_monthly_validation_pass/fail_report_monthly_validation_pass_fail_report_path']/a")}
    element(:dailyValidationReport) {|b| b.link(xpath: "//li[@id='reports_daily_validation_report_daily_validation_report_path']/a")}
    element(:monthlyValidationReport) {|b| b.link(xpath: "//li[@id='reports_monthly_validation_report_monthly_validation_report_path']/a")}
    element(:dailySystemValidatedReport) {|b| b.link(xpath: "//li[@id='reports_daily_system_validated_report_system_validated_report_path']/a")}
    element(:dailyLoansNotValidated) {|b| b.link(xpath: "//li[@id='reports_daily_loans_not_validated_daily_loans_not_validated_path']/a")}
    element(:monthlyLoansNotValidated) {|b| b.link(xpath: "//li[@id='reports_monthly_loans_not_validated_monthly_loans_not_validated_path']/a")}
    element(:loanValidationHistory) {|b| b.link(xpath: "//li[@id='reports_loan_validation_history_loan_validation_history_path']/a")}
    element(:EConsentOnCancelledDeniedWithdrawnLoans) {|b| b.link(xpath: "//li[@id='reports_econsent_on_cancelled,_denied,_or_withdrawn_loans_registration_esign_consent_index_path']/a")}
end
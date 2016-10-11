Given(/^You are in the Registration page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).registration.when_present(10).click
end

And (/^I see Registration Validation$/) do
  #sleep(10)
  #expect(on(RegistrationPage).registrationValidation.present?).to be_truthy
end

When(/^I click on Registration Validation$/) do
  on(RegistrationPage).registrationValidation.when_present(10).hover
end

Then(/^I get Registration Validation results/) do
  on(RegistrationPage).forcedRegistrations.when_present(10).hover
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).FCRADaily.when_present(10).hover
  sleep(2)
  on(RegistrationPage).reports.when_present(10).click
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).dailyValidationPASSFAILReport.when_present(10).hover
  sleep(2)
  on(RegistrationPage).reports.when_present(10).click
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).monthlyValidationPASSFAILReport.when_present(10).hover
  sleep(2)
  on(RegistrationPage).reports.when_present(10).click
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).dailyValidationReport.when_present(10).hover
  sleep(2)
  on(RegistrationPage).reports.when_present(10).click
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).monthlyValidationReport.when_present(10).hover
  sleep(2)
  on(RegistrationPage).reports.when_present(10).click
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).dailySystemValidatedReport.when_present(10).hover
  sleep(2)
  on(RegistrationPage).reports.when_present(10).click
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).dailyLoansNotValidated.when_present(10).hover
  sleep(2)
  on(RegistrationPage).reports.when_present(10).click
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).monthlyLoansNotValidated.when_present(10).hover
  sleep(2)
  on(RegistrationPage).reports.when_present(10).click
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).loanValidationHistory.when_present(10).hover
  sleep(2)
  on(RegistrationPage).reports.when_present(10).click
  on(RegistrationPage).reports.when_present(10).click
    on(RegistrationPage).EConsentOnCancelledDeniedWithdrawnLoans.when_present(10).hover
  sleep(3)
end
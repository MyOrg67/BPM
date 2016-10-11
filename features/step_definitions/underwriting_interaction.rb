Given(/^You are in the Underwriting page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).underwriting.when_present(10).click
end

And (/^I see Underwriter$/) do
  sleep(5)
  expect(on(UnderwritingPage).underwriter.present?).to be_truthy
end

When(/^I click on Underwriter$/) do
  on(UnderwritingPage).underwriter.when_present(10).click
end



Then(/^I get Underwriter results$/) do
    on(UnderwritingPage).validationFinalApproval.when_present(10).click
  on(UnderwritingPage).underwriter.when_present(10).click
    on(UnderwritingPage).productData.when_present(10).click
  on(UnderwritingPage).underwriter.when_present(10).click
    on(UnderwritingPage).productGuidelines.when_present(10).click
  on(UnderwritingPage).underwriter.when_present(10).click
    on(UnderwritingPage).bulkValidationReport.when_present(10).click
  on(UnderwritingPage).underwriter.when_present(10).click
    on(UnderwritingPage).floridaCondoPERSlist.when_present(10).click

  on(UnderwritingPage).creditSuisseExports.when_present(10).click
  on(UnderwritingPage).jumboOpsReports.when_present(10).click
  on(UnderwritingPage).UWDashboard.when_present(10).click
  on(UnderwritingPage).underwritingReports.when_present(10).click
    on(UnderwritingPage).UWSubmitted.when_present(10).hover
  on(UnderwritingPage).underwritingReports.when_present(10).click
  on(UnderwritingPage).underwritingReports.when_present(10).click
    on(UnderwritingPage).UWReceived.when_present(10).hover
  on(UnderwritingPage).underwritingReports.when_present(10).click
  on(UnderwritingPage).underwritingReports.when_present(10).click
    on(UnderwritingPage).conditionsPendingReview.when_present(10).hover
  on(UnderwritingPage).underwritingReports.when_present(10).click
  on(UnderwritingPage).underwritingReports.when_present(10).click
    on(UnderwritingPage).pendingSecondReview.when_present(10).hover
  on(UnderwritingPage).underwritingReports.when_present(10).click
  on(UnderwritingPage).underwritingReports.when_present(10).click
    on(UnderwritingPage).fileIncomplete.when_present(10).hover
  on(UnderwritingPage).underwritingReports.when_present(10).click
  on(UnderwritingPage).underwritingReports.when_present(10).click
    on(UnderwritingPage).waivedConditions.when_present(10).hover
    sleep(3)

end

And(/^I click on Validation\/Final Approval$/) do
  on(UnderwritingValidationPage).validationFinalApproval.when_present(10).click
end

#  CTMWEB-5367 Compensation Acceptance and Max Cash Back Rules - Add To Closing Validation Screen

Then(/^you see Compensation Acceptance and Max Cash Back Acceptance Validations in the Underwriting Checklist$/) do
  on(UnderwritingValidationPage).enterLoanNumber.when_present(10).send_keys("6000390")
  on(UnderwritingValidationPage).displayLoan.when_present(10).click
  sleep(3)
  #on(UnderwritingValidationPage).compensationAcceptance.when_present(45).click
  #expect(on(UnderwritingValidationPage).compensationAcceptance.present?).to be_truthy
  sleep(5)
  on(UnderwritingValidationPage).maxCashBackAcceptance.when_present(45).click
  expect(on(UnderwritingValidationPage).maxCashBackAcceptance.present?).to be_truthy
end


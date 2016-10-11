Given(/^You are in Compliance page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).compliance.when_present(10).click
  sleep(3)
end

And(/^you see HMDA$/) do
  expect(on(CompliancePage).HMDA.present?).to be_truthy
end

Then(/^you select Reportable Events from the drop down menu$/) do
  on(CompliancePage).HMDA.when_present(10).click
  on(CompliancePage).reportableEvents.when_present(10).click
  sleep(3)
end

And(/^you select the Montly\-Quarterly Reports date ranges$/) do
  on(HMDAComplianceEventsPage).reportType.when_present(10).click
    on(HMDAComplianceEventsPage).m.when_present(10).click
  on(HMDAComplianceEventsPage).mPeriod.when_present(10).click
    on(HMDAComplianceEventsPage).month.when_present(10).click
  sleep(2)
  on(HMDAComplianceEventsPage).periodYear.when_present(10).click
    on(HMDAComplianceEventsPage).year.when_present(10).click
end

Then(/^you click on Submit$/) do
  on(HMDAComplianceEventsPage).submit.when_present(10).click
end

And(/^you select Import from Mortgagebot$/) do
  on(HMDAComplianceEventsPage).importFromMortgagebot.when_present(10).click
end

Then(/^you select the file to upload$/) do
  sleep(5)
end

And(/^then you upload the file$/) do
  on(HMDAComplianceEventsPage).browser.file_field.set "C:/Users/mcgrathj/Desktop/october.csv"
  on(HMDAComplianceEventsPage).uploadFile.when_present(10).click
  sleep(5)
end

Then (/^you do the transformations$/) do
  on(HMDAComplianceEventsPage).importFromMortgagebot.when_present(20).hover
  on(HMDAComplianceEventsPage).doTransformations.when_present(10).click
  on(HMDAComplianceEventsPage).importFromMortgagebot.when_present(20).hover
end


And(/^then verify Preappr number pre\-TRID remains the same number$/) do
  sleep(5)
  #def test_f
  #  @selenium.open "/compliance/hmda/loan_compliance_events/1057194/edit"
  #  begin
  #    assert_equal "2", @selenium.get_value("id=loan_compliance_event_preappr")
  #  rescue Test::Unit::AssertionFailedError
  #    @verification_errors << $!
  #  end
  #end

  on(HMDAComplianceEventsPage).test_f
end
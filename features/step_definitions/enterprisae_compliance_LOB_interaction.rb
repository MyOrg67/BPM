Given(/^You are in the Enterprise Compliance LOB page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).enterpriseComplianceLOB.when_present(10).click
  sleep(3)
end

And(/^I see Flood Cert Report/) do
  expect(on(EnterpriseComplianceLOBPage).floodCertReport.present?).to be_truthy
end

When(/^I click on Flood Cert Report$/) do
  on(EnterpriseComplianceLOBPage).floodCertReport.when_present(10).click
  sleep(3)
end

Then(/^I get Flood Cert Report results/) do
  pending
end
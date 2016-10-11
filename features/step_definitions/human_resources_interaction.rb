Given(/^You are in the Human Resources page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).humanResources.when_present(10).click
  sleep(3)
end

And(/^I see Commission Plan Details/) do
  expect(on(HumanResourcesPage).commissionPlanDetails.present?).to be_truthy
end

When(/^I click on Commission Plan Details$/) do
  on(HumanResourcesPage).commissionPlanDetails.when_present(10).hover
end

Then(/^I get Commission Plan Details results/) do
  on(HumanResourcesPage).branchCompensations.when_present(10).click
    on(HumanResourcesPage).loans.when_present(10).hover
  on(HumanResourcesPage).branchCompensations.when_present(10).click
  on(HumanResourcesPage).branchCompensations.when_present(10).click
    on(HumanResourcesPage).branches.when_present(10).hover
  on(HumanResourcesPage).branchCompensations.when_present(10).click
  on(HumanResourcesPage).branchCompensations.when_present(10).click
    on(HumanResourcesPage).employees.when_present(10).hover
  sleep(3)
end
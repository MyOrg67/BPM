Given(/^You are in the Evening Shift page$/) do
  visit AutomationHomePage
  on(LoginPage).login_yml
  on(LandingPage).menus.when_present(10).click
  sleep(1)
  on(LandingPage).eveningShift.when_present(10).click
end

And (/^I see the Fiservheader$/) do
  sleep(5)
  expect(on(EveningShiftPage).Fiserv.present?).to be_truthy
end

When(/^I click on Fiservheader$/) do
  on(EveningShiftPage).Fiserv.when_present(10).click
end

Then(/^I get Fiservheader results/) do
  on(EveningShiftPage).LOIFiles.when_present(10).click
  on(EveningShiftPage).TSS.when_present(10).click
    on(EveningShiftPage).helloLetters.when_present(10).click
  sleep(10)
end
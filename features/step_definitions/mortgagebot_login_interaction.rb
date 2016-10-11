Given(/^You are in the Login page$/) do
  visit MortgagebotAutomationHomePage
end

When(/^I Login$/) do
  on(MortgagebotLoginPage).mortgagebotlogin_yml
end

Then(/^I get Landing page$/) do
    if on(MortgagebotSecurityPage).securityQuestionOne.present?
      on(MortgagebotSecurityPage).securityone_yml
    end

    if on(MortgagebotSecurityPage).securityQuestionTwo.present?
      on(MortgagebotSecurityPage).securitytwo_yml
    end

    if on(MortgagebotSecurityPage).securityQuestionThree.present?
      on(MortgagebotSecurityPage).securitythree_yml
    end

    on(MortgagebotPasswordPage).securitypassword_yml
    sleep(3)

  end






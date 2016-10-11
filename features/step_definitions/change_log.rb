Given(/^You are logging into Mortgagebot$/) do
  visit MortgagebotAutomationHomePage
  on(MortgagebotLoginPage).mortgagebotlogin_yml

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

And(/^You select a loan$/) do
  on(MortgagebotLandingPage).pipeline.when_present(10).click
  on(MortgagebotLandingPage).pipelineSearch.when_present(10).click
  on(MortgagebotLandingPage).mortgagebotsearch_yml
  #on(MortgagebotLandingPage).search.when_present(10).click
  on(MortgagebotLandingPage).loanDetails.when_present(10).click
end

And(/^You disclose or redeisclose loan$/) do
  on(MortgagebotLoanDetailPage).docPackages.when_present(10).click
  on(MortgagebotLoanDetailPage).orderDocumentPackage.when_present(10).click
  sleep(1)
  on(MortgagebotLoanDetailPage).documentPackageType.when_present(10).click
  sleep(1)
  on(MortgagebotLoanDetailPage).documentPackageTypeActual.when_present(10).send_keys :enter
  sleep(1)
  on(MortgagebotLoanDetailPage).documentPackageTypeActual.when_present(10).click
  sleep(1)
  on(MortgagebotLoanDetailPage).eDiclosure.when_present(10).click
  on(MortgagebotLoanDetailPage).clickSign.when_present(10).click
  on(MortgagebotLoanDetailPage).submit.when_present(10).click
  sleep(1)
end

And(/^You make entries in the Underwriter Conditions and Decisions fields$/) do
  on(MortgagebotLoanDetailPage).formsAndDocs.when_present(10).click
  on(MortgagebotLoanDetailPage).UWConditionsDecisions.when_present(10).click

  frame = @browser.iframe(name: "legacy-frame")
  frame.use
  frame.element(:xpath, "/html/body/table[2]/tbody/tr[1]/td[2]/select").when_present(10).click
  frame.element(:xpath, "/html/body/table[2]/tbody/tr[1]/td[2]/select/option[2]").when_present(10).click
  frame.element(:xpath, "/html/body/table[2]/tbody/tr[2]/td[2]/select").when_present(10).click
  frame.element(:xpath, "/html/body/table[2]/tbody/tr[2]/td[2]/select/option[2]").when_present(10).click
  count = 0
  while frame.text_field(:name, 'maxrate').value != "" && count < 50
    frame.text_field(:name, 'maxrate').send_keys(:backspace)
    count += 1
  end
  frame.element(:name, "maxrate").when_present(10).send_keys "3.750"
  count = 0
  while frame.text_field(:name, 'uwapprovalrate').value != "" && count < 50
    frame.text_field(:name, 'uwapprovalrate').send_keys(:backspace)
    count += 1
  end
  frame.element(:name, "uwapprovalrate").when_present(10).send_keys "3.750"
  count = 0
  while frame.text_field(:name, 'uwcreditscoreBorrower').value != "" && count < 50
    frame.text_field(:name, 'uwcreditscoreBorrower').send_keys(:backspace)
    count += 1
  end
  frame.element(:name, "uwcreditscoreBorrower").when_present(10).send_keys "720"
  fdate = DateTime.now >> 45
  frame.element(:xpath, "/html/body/table[2]/tbody/tr[9]/td[2]/input").when_present(10).send_keys  fdate.strftime("%m/%d/%Y")
  sleep(10)
end

And(/^you Approve all PTC and CPTC conditions and Save$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.use
  frame.element(:name, "status13").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status14").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status15").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status16").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status17").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status18").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status19").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status20").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status21").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status22").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status23").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status24").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status25").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)

  frame.element(:name, "status26").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status27").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status28").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status29").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status30").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status31").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status32").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status33").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status34").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status35").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status36").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:name, "status37").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)
  frame.element(:text, "Approved").when_present(10).send_keys :enter
  sleep(1)
  frame.element(:text, "Approved").when_present(10).click
  sleep(1)

  frame.element(:xpath, "/html/body/table[5]/tbody/tr/td[2]/a[2]/img").when_present(10).click
  sleep(1)
end

And(/^you click on the Notes icon and enter message code and Save$/) do
  on(MortgagebotLoanDetailPage).notes.when_present(10).click
  all_windows = @browser.driver.window_handles
  @browser.driver.switch_to.window(all_windows.last)
  on(MortgagebotLoanDetailPage).message.when_present(10).send_keys "{CDS}"
  on(MortgagebotLoanDetailPage).saveButton.when_present(10).click
  sleep(3)
end

  And(/^you click on the Notes icon and enter CDP message code and Save$/) do
    on(MortgagebotLoanDetailPage).notes.when_present(10).click
    all_windows = @browser.driver.window_handles
    @browser.driver.switch_to.window(all_windows.last)
    on(MortgagebotLoanDetailPage).message.when_present(10).send_keys "{CDP}"
    on(MortgagebotLoanDetailPage).saveButton.when_present(10).click
    sleep(3)
  end

  And(/^you click on the Notes icon and enter CDRS message code and Save$/) do
    on(MortgagebotLoanDetailPage).notes.when_present(10).click
    all_windows = @browser.driver.window_handles
    @browser.driver.switch_to.window(all_windows.last)
    on(MortgagebotLoanDetailPage).message.when_present(10).send_keys "{CDRS}"
    on(MortgagebotLoanDetailPage).saveButton.when_present(10).click
    sleep(3)
  end

  And(/^you click on the Notes icon and enter CDSB message code and Save$/) do
    on(MortgagebotLoanDetailPage).notes.when_present(10).click
    all_windows = @browser.driver.window_handles
    @browser.driver.switch_to.window(all_windows.last)
    on(MortgagebotLoanDetailPage).message.when_present(10).send_keys "{CDSB}"
    on(MortgagebotLoanDetailPage).saveButton.when_present(10).click
    sleep(3)
  end

  And(/^you click on the Notes icon and enter FPO message code and Save$/) do
    on(MortgagebotLoanDetailPage).notes.when_present(10).click
    all_windows = @browser.driver.window_handles
    @browser.driver.switch_to.window(all_windows.last)
    on(MortgagebotLoanDetailPage).message.when_present(10).send_keys "{FPO}"
    on(MortgagebotLoanDetailPage).saveButton.when_present(10).click
    sleep(3)
  end

Then(/^you click on the Notebook icon and verify the change shows up in Loan Notes$/) do
  on(MortgagebotLoanDetailPage).notepad.when_present(10).click
  sleep(3)
  all_windows = @browser.driver.window_handles
  @browser.driver.switch_to.window(all_windows.last)
  expect(@browser.text.include?("CDS")).to be true
end

Then(/^you click on the Notebook icon and verify the change CDP shows up in Loan Notes$/) do
  on(MortgagebotLoanDetailPage).notepad.when_present(10).click
  sleep(3)
  all_windows = @browser.driver.window_handles
  @browser.driver.switch_to.window(all_windows.last)
  expect(@browser.text.include?("CDP")).to be true
end

Then(/^you click on the Notebook icon and verify the change CDRS shows up in Loan Notes$/) do
  on(MortgagebotLoanDetailPage).notepad.when_present(10).click
  sleep(3)
  all_windows = @browser.driver.window_handles
  @browser.driver.switch_to.window(all_windows.last)
  expect(@browser.text.include?("CDRS")).to be true
end

Then(/^you click on the Notebook icon and verify the change CDSB shows up in Loan Notes$/) do
  on(MortgagebotLoanDetailPage).notepad.when_present(10).click
  sleep(3)
  all_windows = @browser.driver.window_handles
  @browser.driver.switch_to.window(all_windows.last)
  expect(@browser.text.include?("CDSB")).to be true
end

Then(/^you click on the Notebook icon and verify the change FPO shows up in Loan Notes$/) do
  on(MortgagebotLoanDetailPage).notepad.when_present(10).click
  sleep(3)
  all_windows = @browser.driver.window_handles
  @browser.driver.switch_to.window(all_windows.last)
  expect(@browser.text.include?("FPO")).to be true
end


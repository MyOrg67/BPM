And(/^On the main menu, click the drop down on Create and select Create Loan$/) do
  sleep(5)
  on(MortgagebotLandingPage).create.when_present(10).click
  on(MortgagebotLandingPage).createLoan.when_present(10).click
  sleep(2)
end

And(/^Click on the Originator textbox$/) do

  # Finding the frame first within New Loan Set Up page and setting focus
  frame = @browser.iframe(name: "legacy-frame")
  frame.use

  # Interacting with Originator field
  frame.text_field(:name, 'instUser_Input').when_present(10).set "104"
  frame.link(:xpath, '/html/body/div/table/tbody/tr/td/table/tbody/tr/td[2]/form/table/tbody/tr[5]/td[2]/div/div/a[2]').when_present(10).click
  #send_keys :enter
end

And(/^Then I click on Submit$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.button(:name, 'mysubmit').when_present(10).click
end

And(/^then enter first name in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'isBorw1_fName_iii').when_present(10).set "Sample"
end

And(/^then enter last name in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'isBorw1_lName_iii').when_present(10).set "Sample"
end

And(/^enter DOB in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'isBorw1_dob_iii').when_present(10).set "05/01/1967"
end

And(/^enter SSN in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'isBorw1_ssn_iii').when_present(10).set "123456789"
end

And(/^enter street address in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'isBorw1_addressType1_borwAddr_iii').when_present(10).set "123 Easy Street"
end

And(/^enter city in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'isBorw1_addressType1_borwCity_iii').when_present(10).set "Fenton"
  sleep(1)
  frame.link(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[4]/tr[11]/td[1]/div/div/a[4]').when_present(10).click
end

And(/^enter street number in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'addrHouseNo_ii').when_present(10).set "2350"
end

And(/^enter street name in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'addrStreetName_ii').when_present(10).set "Green Road"
end

And(/^enter city name in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'subjPropCity_ii').when_present(10).set "Ann Arbor"
  frame.link(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[10]/tr[7]/td[1]/div/div/a').when_present(10).click
end

And(/^enter zip in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'subjPropZip_ii').when_present(10).set "48105"
end

And(/^enter sale price in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  count = 0
  while frame.text_field(:name, 'purPrice_vii').value != "" && count < 50
    frame.text_field(:name, 'purPrice_vii').send_keys(:backspace)
    count += 1
  end
  frame.text_field(:name, 'purPrice_vii').when_present(10).set "100000"
end

And(/^enter appraised value in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.link(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[3]/td[1]/a').when_present(10).click
end

And(/^enter base loan amount in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  count = 0
  while frame.text_field(:name, 'BaseLoanAmount').value != "" && count < 50
    frame.text_field(:name, 'BaseLoanAmount').send_keys(:backspace)
    count += 1
  end
  frame.text_field(:name, 'BaseLoanAmount').when_present(10).set "80000"
end

And(/^select detached property type in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[2]/td[3]/select').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[2]/td[3]/select/option[5]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[2]/td[3]/select/option[5]').when_present(10).click
  sleep(1)
end

And(/^select primary residence for property will be in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[3]/select').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[3]/select/option[3]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[3]/select/option[3]').when_present(10).click
  sleep(1)
end

And(/^select purchase for purpose of loan in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[4]/select').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[4]/select/option[4]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[4]/select/option[4]').when_present(10).click
  sleep(1)
end

And(/^select conforming 30yr fixed for product in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select/option[22]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select/option[22]').when_present(10).click
  sleep(1)
end

#  These two fields are pre-populated and are commented out should there be a need to enter manually
#And(/^select first mortgage for lein type in Borrower Summary$/) do
#  frame = @browser.iframe(name: "legacy-frame")
#  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[3]/select').when_present(10).click
#  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[3]/select/option[2]').when_present(10).hover
#  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[3]/select/option[2]').when_present(10).click
#  textfour = frame.element(:name => "lienType_xi").value
#  puts textfour
#end

#  These two fields are pre-populated and are commented out should there be a need to enter manually
#And(/^select conventional for mortgage applied for in Borrower Summary$/) do
#  frame = @browser.iframe(name: "legacy-frame")
#  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[4]/select').when_present(10).click
#  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[4]/select/option[2]').when_present(10).hover
#  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[8]/td[4]/select/option[2]').when_present(10).click
#  textsix = frame.element(:name => "mortType_i").value
#  puts textsix
#end

And(/^select number of months in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.text_field(:name, 'noMonth_i').when_present(10).set "360"
end

And(/^select rate in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  count = 0
  while frame.text_field(:name, 'intRate_i').value != "" && count < 50
    frame.text_field(:name, 'intRate_i').send_keys(:backspace)
    count += 1
  end
  frame.text_field(:name, 'intRate_i').when_present(10).set "3.750"
end

And(/^click Save in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.button(:name, 'SaveClose').when_present(10).click
end

And(/^click on the continue button in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'applyId').when_present(10).click
end

And(/^click on SaveClose button in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.button(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody/tr[4]/td[3]/input[2]').when_present(10).click
end

And(/^get the loan number that was just created in Borrower summary$/) do
  sleep(20)
  on(MortgagebotLoanDetailPage).loanNumber.when_present(10).click
  textone = @browser.element(:xpath => "/html/body/div[1]/div/div[2]/section/div/h2").text

  File.open('C:\watir_cucumber_template-master\lib\config\data\keywords.yml', 'w') do |file|
    file.puts("keywords: " + "#{textone}")
  end
  puts "The following loan has been created: " + textone
end

And(/^you click on forms and docs on Loan Detail page$/) do
  on(MortgagebotLoanDetailPage).formsAndDocs.when_present(10).click
end

And(/^you click on (\d+) on Loan Detail page$/) do |arg|
  on(MortgagebotLoanDetailPage).oneOOThreeItemized.when_present(10).click
end

And(/^you select on section II on the Detail page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.use
  frame.element(:xpath, '/html/body/table[1]/tbody/tr[1]/td[5]/a/span').when_present(10).click
end

And(/^enter the One in the number of units on the Detail page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'noUnit_ii').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[13]/td[1]/select/option[2]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[13]/td[1]/select/option[2]').when_present(10).click
  sleep(1)
end

And(/^enter TBD in the manner in which it will be held on the Detail Page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'manner_ii').when_present(10).when_present(10).send_keys "TBD"
end

And(/^select Fee Simple in the estate held in on the Detail page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'estateHeld_ii').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[5]/tbody/tr[6]/td[2]/select/option[2]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[5]/tbody/tr[6]/td[2]/select/option[2]').when_present(10).click
  sleep(1)
end

And(/^select the borrower tab III on the Detail page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/table[1]/tbody/tr[1]/td[8]/a/span').when_present(10).click
  sleep(2)
end

And(/^enter the email address on the Detail Page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'email_iii1').when_present(10).send_keys "jmcgrath@mbmortgage.com"
end

And(/^select unmarried for marital status on the Detail page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'mariStatus_iii1').when_present(10).when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[9]/td[1]/select/option[4]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[9]/td[1]/select/option[4]').when_present(10).click
  sleep(1)
end

And(/^select rent on the Detail page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'ownRent_iii1').when_present(10).when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[14]/td[1]/select/option[4]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[14]/td[1]/select/option[4]').when_present(10).click
  sleep(1)
end

And(/^enter three in years on the Detail page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'noYrs_iii1').when_present(10).send_keys "3"
end

And(/^select Income Housing tab V on the Detail page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/table[1]/tbody/tr[1]/td[14]/a/span').when_present(10).click
end

And(/^enter (\d+) for base income on the Detail page$/) do |arg|
  frame = @browser.iframe(name: "legacy-frame")
  count = 0
  while frame.text_field(:name, 'baseInc_v1').value != "" && count < 50
    frame.text_field(:name, 'baseInc_v1').send_keys(:backspace)
    count += 1
  end
  frame.text_field(:name, 'baseInc_v1').when_present(10).send_keys "4000"
end

And(/^click SaveClose on the Detail page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[5]/tbody/tr/td[2]/a[1]/img').when_present(10).click
  sleep(2)
  if @browser.alert.exists?
    alert = @browser.alert
    alert.ok
  end
end

And(/^you click on (\d+) again on Loan Detail page$/) do |arg|
  on(MortgagebotLoanDetailPage).oneOOThreeItemized.when_present(10).click
end

And(/^select the declarations VIII header on Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/table[1]/tbody/tr[2]/td[8]/a/span').when_present(10).click
end

And(/^select the declarations on the Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[2]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[4]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[5]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[6]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[7]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[8]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[9]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[10]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[11]/td[2]/input[1]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[12]/td[2]/input[2]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[13]/td[2]/input[1]').when_present(10).click
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[14]/td[2]/input[2]').when_present(10).click
end

And(/^select SaveClose on the Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/table[2]/tbody/tr/td[2]/table[4]/tbody/tr/td[2]/a[1]/img').when_present(10).click
end

And(/^you click on (\d+) once again on Loan Detail page$/) do |arg|
  on(MortgagebotLoanDetailPage).oneOOThreeItemized.when_present(10).click
end

And(/^select the government monitoring X tab on Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/table/tbody/tr[2]/td[14]/a/span').when_present(10).click
end


And(/^select ethnicity not hispanic or latino on the Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'ethnicity_x1').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/select/option[3]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/select/option[3]').when_present(10).click
  sleep(1)
end

And(/^select gender female on the Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'sex_x1').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[3]/select/option[2]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[3]/select/option[2]').when_present(10).click
  sleep(1)
end

And(/^select race asian on the details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[5]/td/table/tbody/tr[1]/td[2]/input').when_present(10).click
end

And(/^select application taken by internet on the Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'takenBy_x').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[3]/tbody/tr[3]/td[1]/select/option[3]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[3]/tbody/tr[3]/td[1]/select/option[3]').when_present(10).click
  sleep(1)
end

And(/^select othe data tab on Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/table/tbody/tr[2]/td[17]/a/span').when_present(10).click
end

And(/^select property status existing on Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:name, 'buildStatus').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/select/option[3]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/select/option[3]').when_present(10).click
  sleep(1)
end

And(/^select will escrow be waived no on Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[5]/td[1]/input[2]').when_present(10).click
end

And(/^select save button on Details page$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[5]/td[1]/input[2]').when_present(10).click
  sleep(10)
end

And(/^select Loan estimate on Details page$/) do
  on(MortgagebotLoanDetailPage).loanEstimate.when_present(10).click
end

And(/^select in person on disclosure delivery method on Loan Estimate page$/) do
  on(MortgagebotLoanDetailPage).disclosureDeliveryMethod.when_present(10).click
  on(MortgagebotLoanDetailPage).disclosureDeliveryMethodActual.when_present(10).click
  sleep(1)
end

And(/^enter today's date for borrower provided intent to proceed date on Loan Estimate page$/) do
  tdate = DateTime.now
  on(MortgagebotLoanDetailPage).borrowerProvidedIntentToProceed.when_present(10).click
  on(MortgagebotLoanDetailPage).borrowerProvidedIntentToProceed.when_present(10).send_keys tdate.strftime("%m/%d/%Y")
  on(MortgagebotLoanDetailPage).borrowerProvidedIntentToProceed.when_present(10).send_keys :enter
  sleep(5)
end

And(/^select electronic for method provided on Loan Estimate page$/) do
  on(MortgagebotLoanDetailPage).methodProvided.when_present(10).click
  on(MortgagebotLoanDetailPage).methodProvidedActual.when_present(10).click
end

And(/^enter estimated closing date (\d+) days after today's date on Loan Estimate page$/) do |arg|
  fdate = DateTime.now >> 45
  on(MortgagebotLoanDetailPage).estimatedClosingDate.when_present(10).send_keys  fdate.strftime("%m/%d/%Y")
  on(MortgagebotLoanDetailPage).estimatedClosingDate.when_present(10).send_keys :enter
  @browser.execute_script("document.getElementById('Q1291').scrollIntoView(true);")
  sleep(1)
end

And(/^select fees on Loan Estimate page$/) do
  on(MortgagebotLoanDetailPage).fees.when_present(10).click
  sleep(3)
end

And(/^click on save on Loan Estimate page$/) do
  on(MortgagebotLoanDetailPage).save.when_present(10).click
  sleep(10)
end

And(/^click on disclose on Loan estimate page$/) do
  on(MortgagebotLoanDetailPage).disclose.when_present(10).click
  on(MortgagebotLoanDetailPage).disclose.when_present(10).send_keys :enter
  sleep(3)
end

And(/^click on forms and docs again on the details page$/) do
  on(MortgagebotLoanDetailPage).formsAndDocs.when_present(10).click
end

And(/^select doc packages on Details page$/) do
  on(MortgagebotLoanDetailPage).docPackages.when_present(10).click
end

And(/^select order document package Doc Package on Details page$/) do
  on(MortgagebotLoanDetailPage).orderDocumentPackage.when_present(10).click
  sleep(3)
end

And(/^select document package type on Initial Disclosure page$/) do
  on(MortgagebotLoanDetailPage).documentPackageType.when_present(10).click
  sleep(1)
  on(MortgagebotLoanDetailPage).documentPackageTypeActual.when_present(10).send_keys :enter
  sleep(1)
  on(MortgagebotLoanDetailPage).documentPackageTypeActual.when_present(10).click
  sleep(1)
end

And(/^enter MBF in Alt Lender Code on Initial Disclosure page$/) do
  on(MortgagebotLoanDetailPage).altLenderCode.when_present(10).send_keys "MBF"
  sleep(3)
end

And(/^check the box on edisclosure on Initial Disclosure page$/) do
  on(MortgagebotLoanDetailPage).eDiclosure.when_present(10).click
end

And(/^check the box on click sign on Initail Disclosure page$/) do
  on(MortgagebotLoanDetailPage).clickSign.when_present(10).click
end

And(/^click on submit on the Initial Disclosure$/) do
  on(MortgagebotLoanDetailPage).submit.when_present(10).click
  sleep(10)
  @browser.element(xpath: "/html/body/div[3]/div[3]/div/button[3]").click
  sleep(3)
  @browser.element(xpath: "/html/body/div[6]/div[3]/div/button[2]").click
  sleep(15)
end

Then(/^refresh page to view Doc Package in mortgagebot$/) do
  @browser.refresh
  sleep(10)
  @browser.refresh
  sleep(10)
  expect(on(MortgagebotLoanDetailPage).successfulDisclosure.present?).to be_truthy
  on(MortgagebotLoanDetailPage).successfulDisclosure.when_present(10).click
  sleep(15)

  @browser.element(xpath: "/html/body/div[4]/div[2]/form/div/div[2]/div/a").click
  sleep(3)
  all_windows = @browser.driver.window_handles
  @browser.driver.switch_to.window(all_windows.last)
  @browser.window.maximize
  frame = @browser.iframe(id: "legacy-frame-proof-sheet")
  frame.use
  sleep(1)
  textone = frame.element(:class => "description").text
  puts "The following Loan Detail Report has been generated " + textone
  sleep(3)
end


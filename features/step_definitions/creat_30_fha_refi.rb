And(/^select refinanced for purpose of loan in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[4]/select').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[4]/select/option[5]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[4]/td[4]/select/option[5]').when_present(10).click
  sleep(1)
end

And(/^select streamline refi fixed for product in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select/option[43]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select/option[43]').when_present(10).click
  sleep(1)
end
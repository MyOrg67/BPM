And(/^select fha streamline 203b for product in Borrower Summary$/) do
  frame = @browser.iframe(name: "legacy-frame")
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select').when_present(10).click
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select/option[41]').when_present(10).send_keys :enter
  sleep(1)
  frame.element(:xpath, '/html/body/div/div/table/tbody/tr/td/form[1]/table/tbody[12]/tr[6]/td[3]/select/option[41]').when_present(10).click
  sleep(1)
end
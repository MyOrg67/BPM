class HumanResourcesPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:commissionPlanDetails) {|b| b.link(xpath: "//li[@id='hr_commission_plan_details_accounting_commission_plan_details_path']/a")}

  element(:branchCompensations) {|b| b.link(text: "Branch Compensations")}

  #Selections within Branch Compensations drop down menu
  element(:loans) {|b| b.link(xpath: "//li[@id='branch_compensations_loans_core_loans_path']/a")}
  element(:branches) {|b| b.link(xpath: "//li[@id='branch_compensations_branches_core_institutions_path']/a")}
  element(:employees) {|b| b.link(xpath: "//li[@id='branch_compensations_employees_core_originators_path']/a")}

  def back
    @browser.back
  end

  def hover
    assert_exists
    assert_has_input_devices_for :hover

    element_call { driver.action.move_to(@element).perform }
  end
end
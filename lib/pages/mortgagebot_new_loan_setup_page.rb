class MortgagebotNewLoanSetupPage < GenericBasePage
  include DataHelper

  #Header selections
  element(:iFrame) {|page| page.iframe(id: "legacy-frame")}
  element(:legacyFrame) {|b| b.frame(id: "legacy-frame")}
  element(:originator) {|b| b.element(name: "instUser_Input")}
  element(:action) {|b| b.element(name: "newLoanAction")}
  element(:submit) {|b| b.element(name: "mysubmit")}
  element(:cancel) {|b| b.element(name: "Cancel")}

public

def switch_to_frame
  element(:originator) {|b| b.element(name: "instUser_Input")}
  @browser.frame(:id => "legacy-frame").text_field(:name, instUser_Input).when_present.set("WTF, OVER!")
  #frame1 = @browser.frame(:id => "legacy-frame")
  #@browser.frame1
  #@browser.frame1.text_field(:name, instUser_Input).set("WTF, OVER!")
  #@browser.find_element(name => 'instUser_Input').click
  #@browser.find_element(name => 'instUser_Input').send_keys "104"

end
  element(:iFrame) {|b| b.frame(id: "legacy-frame")}
  element(:legacyFrame) {|b| b.frame(id: "legacy-frame")}
  element(:originator) {|b| b.element(name: "instUser_Input")}
  element(:action) {|b| b.element(name: "newLoanAction")}
  element(:submit) {|b| b.element(name: "mysubmit")}
  element(:cancel) {|b| b.element(name: "Cancel")}
  element(:saveClose) {|b| b.button(name: "SaveClose")}

end

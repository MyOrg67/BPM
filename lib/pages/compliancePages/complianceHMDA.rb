class HMDAComplianceEventsPage < GenericBasePage
  include DataHelper
  include RSpec::Matchers

#Events within Reportable events
element(:reportType) {|b| b.element(text: "Monthly")}
element(:m) {|b| b.element(text: "Monthly")}
element(:mPeriod) {|b| b.element(id: "m_period")}
element(:month) {|b| b.element(text: "October")}
element(:periodYear) {|b| b.element(xpath: "//div[@id='main']/div/div/div/form/select[4]")}
element(:year) {|b| b.element(text: "2015")}
element(:submit) {|b| b.element(xpath: "//div[@id='main']/div/div/div/form/input")}
element(:importFromMortgagebot) {|b| b.element(text: "Import from MortgageBot")}
element(:browse) {|b| b.element(id: "lar_file")}
element(:open) {|b| b.element(xpath: "//div[@id='main']/div/div/div/form/div[2]/div/div/div/input")}
element(:cancel) {|b| b.element(text: "Cancel")}
element(:uploadFile) {|b| b.element(text: "Upload File")}
element(:doTransformations) {|b| b.element(text: "Do Transformations")}

  def test_f
    visit EditCompliancePage
    begin
      assert_equal "2", @selenium.get_value("id=loan_compliance_event_preappr")
    rescue Test::Unit::AssertionFailedError
      @verification_errors << $!
    end
  end

end

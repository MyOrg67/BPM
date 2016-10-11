class SystemAdministrationPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:usageStats) {|b| b.link(text: "Usage Stats")}
  element(:allControllers) {|b| b.link(text: "All Controllers")}
end

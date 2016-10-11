class SuspensePage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:closingValidations) {|b| b.link(text: "Closing Validations")}
end

class SalesPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:regions) {|b| b.link(text: "Regions")}
end

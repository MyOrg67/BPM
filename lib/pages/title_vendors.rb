class TitleVendorsPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:titleVendors) {|b| b.link(text: "Title Vendors")}
  element(:vendorsByState) {|b| b.link(text: "Vendors By State")}
end

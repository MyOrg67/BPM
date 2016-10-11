class PostClosingPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:creditSuisseExports) {|b| b.link(xpath: "//li[@id='post_closing_credit_suisse_exports_#']/a")}

    #Selections within Credit Suisse Reports drop down menu
    element(:postPurchase) {|b| b.link(text: "Post Purchase")}
    element(:purchase) {|b| b.link(text: "Purchase")}

  element(:jumboOpsReports) {|b| b.link(text: "Jumbo Ops Reports")}

end
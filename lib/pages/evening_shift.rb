class EveningShiftPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:TSS) {|b| b.link(text: "TSS")}

    #Selections within TSS drop down menu
    element(:helloLetters) {|b| b.link(text: "Hello Letters")}

  element(:Fiserv) {|b| b.link(text: "Fiserv")}

    #Selections within Fiserv drop down menu
    element(:LOIFiles) {|b| b.link(text: "LOI Files")}
end

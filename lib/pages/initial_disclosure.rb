class InitialDisclosurePage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:initialDisclosureValidation) {|b| b.link(text: "Initial Disclosure Validation")}
  element(:initialDisclosureWorkQueue) {|b| b.link(xpath: "//li[@id='init_disclose_initial_disclosure_work_queue_initial_disclosure_work_queue_index_path']/a")}

end
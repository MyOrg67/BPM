class EnterpriseComplianceLOBPage < GenericBasePage
  include DataHelper

  #class HeaderPage < GenericBasePage
  element(:floodCertReport) {|b| b.link(text: "Flood Cert Report")}
end

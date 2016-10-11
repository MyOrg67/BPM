class Mortgagebot1003Page < GenericBasePage
  include DataHelper

  #Section Two - Property
  element(:IIProperty) {|b| b.element(xpath: "/html/body/table[1]/tbody/tr[1]/td[5]")}

  element(:addressNumber) {|b| b.text_field(name: "addrHouseNo_ii")}
  element(:addressStreetName) {|b| b.text_field(name: "addrStreetName_ii")}
  element(:city) {|b| b.text_field(name: "subjPropCity_ii")}
  element(:state) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[7]/td[2]/select")}
  element(:stateActual) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[7]/td[2]/select/option[23]")}
  element(:zipCode) {|b| b.text_field(name: "wholezip_ii")}
  element(:county) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[7]/td[3]/span/select/option[1]")}
  element(:countyActual) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[7]/td[3]/span/select/option[84]")}
  element(:numberOfUnits) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[13]/td[1]/select")}
  element(:numberOfUnitsActual) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[13]/td[1]/select/option[2]")}
  element(:mannerInWhichTitleHeld) {|b| b.text_field(name: "manner_ii")}
  element(:estateHeldIn) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[5]/tbody/tr[6]/td[2]/select")}
  element(:estateHeldInActual) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[5]/tbody/tr[6]/td[2]/select/option[2]")}


  #Section Three - Borrower
  element(:IIIBorrower) {|b| b.element(xpath: "/html/body/table[1]/tbody/tr[1]/td[8]/a/span")}

  element(:email) {|b| b.text_field(name: "email_iii1")}
  element(:maritalStatus) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[9]/td[1]/select")}
  element(:maritalStatusActual) {|b| b.element(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[9]/td[1]/select/option[4]")}
  element(:years) {|b| b.text_field(name: "noYrs_iii1")}

  #Section Five - Income Housing
  element(:baseIncome) {|b| b.text_field(name: "baseInc_v1")}
  element(:saveCloseThree) {|b| b.text_field(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[5]/tbody/tr/td[2]/a[1]/img")}

  #Simulate a carriage return after clicking Save to close pop-up

  #Section VIII - Declarations
  element(:judgements) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[2]/td[2]/input[2]")}
  element(:bankruptcy) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/input[2]")}
  element(:foreclosed) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[4]/td[2]/input[2]")}
  element(:lawsuit) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[5]/td[2]/input[2]")}
  element(:obligated) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[6]/td[2]/input[2]")}
  element(:delinquent) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[7]/td[2]/input[2]")}
  element(:alimonySupport) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[8]/td[2]/input[2]")}
  element(:borrowed) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[9]/td[2]/input[2]")}
  element(:endorser) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[10]/td[2]/input[2]")}
  element(:citizen) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[11]/td[2]/input[1]")}
  element(:resident) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[12]/td[2]/input[2]")}
  element(:primaryResidence) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[13]/td[2]/input[1]")}
  element(:ownership) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[2]/tbody/tr[14]/td[2]/input[2]")}
  element(:saveCloseFour) {|b| b.button(xpath: "/html/body/table[2]/tbody/tr/td[2]/table[4]/tbody/tr/td[2]/a[1]/img")}

  #Section X - Government Monitoring
  element(:governmentMonitoring) {|b| b.element(xpath: "/html/body/table/tbody/tr[2]/td[14]/a/span")}
  element(:ethnicity) {|b| b.element(xpsth: "/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/select")}
  element(:ethnicityActual) {|b| b.element(xpath: "/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/select/option[3]")}
  element(:gender) {|b| b.element(xpath: "/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[3]/select")}
  element(:genderActual) {|b| b.element(xpath: "/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[3]/select/option[2]")}
  element(:race) {|b| b.button(xpath: "/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[5]/td/table/tbody/tr[1]/td[2]/input")}
  element(:applicationTakenBy) {|b| b.element(xpath: "/html/body/form/table/tbody/tr/td[2]/table[3]/tbody/tr[3]/td[1]/select")}
  element(:applicationTakenByActual) {|b| b.element(xpath: "/html/body/form/table/tbody/tr/td[2]/table[3]/tbody/tr[3]/td[1]/select/option[3]")}

  #Section Other Data
  element(:baseIncome) {|b| b.element(xpath: "/html/body/table/tbody/tr[2]/td[17]/a/span")}
  element(:propertyStatus) {|b| b.element(xpath: "/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/select")}
  element(:propertyStatusActual) {|b| b.element(xpath: "/html/body/form/table/tbody/tr/td[2]/table[2]/tbody/tr[3]/td[2]/select/option[3]")}
  element(:baseIncome) {|b| b.button(name: "willWaived_xi")}
  element(:saveCloseFive) {|b| b.element(xpath: "/html/body/form/table/tbody/tr/td[2]/table[5]/tbody/tr/td[2]/a[1]/img")}


end

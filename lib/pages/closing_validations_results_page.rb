class ClosingValidationsReportsPage < GenericBasePage
  include DataHelper

  #After entering a loan number for validation, these are the fields that will appear
  element(:onlyDiscloseViaCD) {|b| b.element(xpath: "/html/body/div[3]/div/div/div/div/div/div[2]/div/div/div[1]/span/div[1]/div")}
  element(:allowLEDisclosures) {|b| b.element(xpath: "/html/body/div[3]/div/div/div/div/div/div[2]/div/div/div[1]/span/div[2]/div")}
  element(:message) {|b| b.element(xpath: "/html/body/div[3]/div/div/div/div/div/div[2]/div/div/div[1]/span/div[2]/h3")}

  #CTMWEB-5191 County, City, Village and Other taxes changed to being optional

  #This is the Closing Checklist button
  element(:closingChecklist) {|b| b.element(text:"Start Checklist")}

  #This is the Open/Close button for section 7 in the closing checklist
  element(:checklistSeven) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/thead/tr/th/a/i")}

  #CTMWEB-5191 County, City, Village and Other taxes changed to being optional Are taxes due?  button

  element(:areTaxesDue) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[13]/td[2]/span[1]/div[1]/label/input")}

  element(:countyTax) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[14]/td[1]/span[2]")}
  element(:dueDate1) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[15]/td[1]/span[2]")}
  element(:dueDate2) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[16]/td[1]/span[2]")}
  element(:dueDate3) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[17]/td[1]/span[2]")}
  element(:dueDate4) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[18]/td[1]/span[2]")}
  element(:cityTax) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[19]/td[1]/span[2]")}
  element(:dueDate5) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[20]/td[1]/span[2]")}
  element(:dueDate6) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[21]/td[1]/span[2]")}
  element(:dueDate7) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[22]/td[1]/span[2]")}
  element(:dueDate8) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[23]/td[1]/span[2]")}
  element(:villageTax) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[24]/td[1]/span[2]")}
  element(:dueDate9) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[25]/td[1]/span[2]")}
  element(:dueDate10) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[26]/td[1]/span[2]")}
  element(:dueDate11) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[27]/td[1]/span[2]")}
  element(:dueDate12) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[28]/td[1]/span[2]")}
  element(:otherTax) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[29]/td[1]/span[2]")}
  element(:dueDate13) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[30]/td[1]/span[2]")}
  element(:dueDate14) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[31]/td[1]/span[2]")}
  element(:dueDate15) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[32]/td[1]/span[2]")}
  element(:dueDate16) {|b| b.element(xpath:"/html/body/div[3]/div/div/div/div/div/div[4]/closing-checklist/form/table[7]/tbody/tr[33]/td[1]/span[2]")}



  public
  def btnmessage

    now =Time.now.strftime("%m/%d/%Y %I:%M %p")
    puts "Here is the value for now: " + now

    name ="McGrath, John"
    puts "Here is the value for name: " + name

    stamp = @browser.element(:css, "h3.lead.ng-binding").text
    puts "Here is the value for stamp: " + stamp

    if
    stamp.include?(name)
      puts "Name is present in message"
    else
      puts "Name is not present in message"
    end

    if
    stamp.include?(now)
      puts "Date and time match"
    else
      puts "Date and time do not match"
    end

  end
end
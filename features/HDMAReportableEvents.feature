Feature:  HMDA update for HomeShopper Advantage (Updating loan types pre and post TRID
  Scenario:  Currently loans pre TRID are listed as type 1, 2, or 3 need loans post TRID to be type 3
    Given You are in Compliance page
    And you see HMDA
    Then you select Reportable Events from the drop down menu
    And you select the Montly-Quarterly Reports date ranges
    Then you click on Submit
    And you select Import from Mortgagebot
    Then you select the file to upload
    And then you upload the file
    Then you do the transformations
    And then verify Preappr number pre-TRID remains the same number




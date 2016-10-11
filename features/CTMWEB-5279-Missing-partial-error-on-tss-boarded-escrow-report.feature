Feature:  Missing partial error on tss boarded escrow report
  Scenario:  go to http://ctmweb-qa/tss/reports/boarded_escrow
  It shows 500 something went wrong. The ctmerrors link is here: http://ctmerrors/apps/4fe9ed293da9e11742000006/problems/571fd11a17d5e9dc06000226

    Given You are in the Secondary Marketing page
    And you click on TSS
    And you scroll down and hover over Reports
    And you scroll right and hover over Accounting Reports
    And you scroll over and click on Boarded Escrow Reports
    Then you see Boarded Escrow Reports and not a 500 page

Feature: Display list of purchasable cars filtered by model
 
  As a car buyer 
  So that I can quickly browse cars
  I want to see purchasable cars in a list matching only a certain model

Background: cars and models have been added to database

  Given the following models exist:
  | name                   |
  | Volvo                  |
  | Kia                    |
  | mini                   |
  
  Given the following cars exist:
  | price                   | car_model_id | year       | cylinders | horse_power | doors | air_bags | abs  |
  | 12000                  |	1		   | 2012-12-23 | 6         | 12          | 4     | true     | true |
  | 13000                  |	2		   | 2012-12-21 | 4         | 15          | 2     | true     | false |
  | 11000                  |	3		   | 2012-12-25 | 7         | 11          | 6     | false     | true |
  | 16000                  |	1		   | 2012-12-23 | 6         | 12          | 4     | true     | true |
  | 17000                  |	2		   | 2012-12-21 | 4         | 15          | 2     | true     | false |
  | 10000                  |	3		   | 2012-12-25 | 7         | 11          | 6     | false     | true |

  And I am on the carsweb home page
  
Scenario: select Volvo as a car model
  Given I am on the cars page
  And I select "Volvo" from "car_model_id"
  #Then I reload the page
  Then I should see "12000"
  And I should see "16000"
  #And I should not see "mini"
  
  
  
  
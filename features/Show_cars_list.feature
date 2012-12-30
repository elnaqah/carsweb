Feature: Display list of purchasable cars
 
  As a car buyer 
  So that I can browse cars
  I want to see purchasable cars in a list

Background: cars and models have been added to database

  Given the following models exist:
  | name                   |
  | Volvo                  |
  | Kia                    |
  | mini                   |
  
  Given the following cars exist:
  | price                   | car_model_id | year       | cylinders | horse_power | doors | air_bags | abs  |
  | 12000$                  |	1		   | 2012-12-23 | 6         | 12          | 4     | true     | true |
  | 13000$                  |	2		   | 2012-12-21 | 4         | 15          | 2     | true     | false |
  | 11000$                  |	3		   | 2012-12-25 | 7         | 11          | 6     | false     | true |

  And I am on the carsweb home page
  
Scenario: Show all cars
  Given I am on the cars page
  Then I should see "12000$"
  Then I should see "13000$"
  Then I should see "11000$"
  
Scenario: Show choosen car
  #Given I am on the cars page
  Given I am on Show of car 1
  Then I should see "Price: 12000$"
  Then I should see "Year: 2012-12-23"
  Then I should see "Cylinders: 6"
  Then I should see "Horse power: 12"
  Then I should see "Doors: 4"
  Then I should see "Air bags: true"
  Then I should see "Abs: true"
  
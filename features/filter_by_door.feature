Feature: Display list of purchasable cars filtered by doors

As a car buyer 
  So that I can quickly browse cars
  I want to see purchasable cars in a list matching only a certain type

Background: cars and models have been added to database

  Given the following models exist:
  | name                   |
  | Volvo                  |
  | Kia                    |
  | mini                   |
  
  Given the following cars exist:
  | price                  | car_model_id          | year       | cylinders | horse_power | doors | air_bags | abs  | used|
  | 12000                  |	1		   | 2012-12-23 | 6         | 12          | 4     | true     | true | true|
  | 13000                  |	2		   | 2012-12-21 | 4         | 15          | 2     | true     | false |true|
  | 11000                  |	3		   | 2012-12-25 | 7         | 11          | 6     | false     | true |true|
  | 16000                  |	1		   | 2012-12-23 | 6         | 12          | 4     | true     | true | true|
  | 17000                  |	2		   | 2012-12-21 | 4         | 15          | 2     | true     | false |true|
  | 10000                  |	3		   | 2012-12-25 | 7         | 11          | 6     | false     | true |true|

  And I am on the carsweb home page

Scenario:select 2 door car

Given I am on the cars page

And I select "2" from "doors"
 
And I press "search_btn"

Then I should see "17000"

And I should see "13000"

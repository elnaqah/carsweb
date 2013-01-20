Feature: Display list of cars sorted by different criteria
 
  As a car buyer 
  So that I can quickly browse cars based on my preferences
  I want to see purchasable sorted by price or year

Background: cars and models have been added to database

  Given the following models exist:
  | name                   |
  | Volvo                  |
  | Kia                    |
  | mini                   |
  
  Given the following cars exist:
  | price                   | car_model_id | year       | cylinders | horse_power | doors | air_bags | abs  | used |
  | 12000                  |	1		   | 2012-12-23 | 6         | 12          | 4     | true     | true | false |
  | 13000                  |	1		   | 2012-12-21 | 4         | 15          | 2     | true     | false | false |
  | 11000                  |	1		   | 2012-12-25 | 7         | 11          | 6     | false     | true | false |
  | 16000                  |	1		   | 2012-12-20 | 6         | 12          | 4     | true     | true | false |
  | 17000                  |	1		   | 2012-12-15 | 4         | 15          | 2     | true     | false | false |
  | 10000                  |	1		   | 2012-12-31 | 7         | 11          | 6     | false     | true | false |
  
  And I am on the carsweb home page
  
Scenario: sort cars by price
  Given I am on the cars page
  Then I follow "New"
  Then I follow "Volvo"
  And I follow "price_sort"
  Then I should see "11000" before "12000"

Scenario: sort cars by year
  Given I am on the cars page
  Then I follow "New"
  Then I follow "Volvo"
  And I follow "Year"
  Then I should see "2012-12-15" before "2012-12-23"



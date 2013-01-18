Feature:Filtering search on cars by price

  As a car buyer
  so that I can search without wasting my time
  I want to search on cars by specific price 
  

Background:cars and models have been added to the database

  Given the following models exist:

  | name                   |
  | Volvo                  |
  | Kia                    |
  | mini                   |
 
  Given the following cars exist:
  | price                   | car_model_id         | year       | cylinders | horse_power | doors | air_bags | abs  |
  | 5000 LE                 |	1		   | 2008-11-22 | 6         | 12          | 4     | true     | true |
  | 52000 LE                |	2		   | 2006-08-28 | 4         | 15          | 2     | true     | false |
  | 51000 LE                |	3		   | 2012-01-22 | 7         | 11          | 6     | false    | true |
  | 60000 LE                |	3		   | 2012-01-22 | 7         | 11          | 6     | false    | true |
  | 53000 LE                |	3		   | 2012-01-22 | 7         | 11          | 6     | false    | true |
 
  And I am on the carsweb homepage

Scenario:Filtering by price

When I fill in "PriceFrom" with "51000"

And I fill in "PriceTo" with "60000"

And I press "search_btn"

Then I should see only cars with prices that range from "51000" to "60000"

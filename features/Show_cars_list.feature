Feature: display list of purchasable cars
 
  As a car buyer 
  So that I can browse cars
  I want to see purchasable cars in a list

Background: cars have been added to database

  Given the following cars exist:
  | price                   | car_model_id | year       | cylinders | horse_power | doors | air_bags | abs  |
  | 12000$                  |	1		   | 2012-12-23 | 6         | 12          | 4     | true     | true |
  | 13000$                  |	2		   | 2012-12-21 | 4         | 15          | 2     | true     | false |
  | 11000$                  |	3		   | 2012-12-25 | 7         | 11          | 6     | false     | true |

  And I am on the carsweb home page
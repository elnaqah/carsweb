Feature:Open used cars list

Scenario:Searching used cars



  Given the following cars exist:
  |  year                   | cylinders   |horse_power | doors     | air_bags | abs  | price   |car_model_id |
  | 2012-12-23              |	1600      |100         | 2         | true     | true | 10000   | 1           |
  | 2012-12-21              |	2000      |200         | 4         | true     | true | 20000   | 2           |
  | 2012-12-25              |	3000      |400         | 5         | false    | false| 50000   | 3           |
  | 2012-12-29              |	2000      |250         | 3         | true     | true | 20000   | 4           |


And I am on the carsweb homepage

Then I should see a list of used cars

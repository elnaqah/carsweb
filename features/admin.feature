Feature: Display login as admin and use the backend
 
  As a admin
  So that I can quickly edit used and new cars 
  I want to edit data and see it.

Background: cars and models have been added to database

  Given the following models exist:
  | name                   |
  | Volvo                  |
  | Kia                    |
  | mini                   |
  
  Given the following cars exist:
  | price                   | car_model_id | year       | cylinders | horse_power | doors | air_bags | abs  | used |
  | 12000                  |	1		   | 2012-12-23 | 6         | 12          | 4     | true     | true | true |
  | 13000                  |	2		   | 2012-12-21 | 4         | 15          | 2     | true     | false | true |
  | 11000                  |	3		   | 2012-12-25 | 7         | 11          | 6     | false     | true | true |
  | 16000                  |	1		   | 2012-12-20 | 6         | 12          | 4     | true     | true | false |
  | 17000                  |	2		   | 2012-12-15 | 4         | 15          | 2     | true     | false | false |
  | 10000                  |	3		   | 2012-12-31 | 7         | 11          | 6     | false     | true | false |
  
  And I am on the carsweb home page
  
Scenario: login as admin
  Given I am on the cars page
  When I fill in "user_name" with "admin"
  When I fill in "user_password" with "admin"
  When I fill in "user_password" with "admin"
  When I press "Login"
  Then I should see "Signed in as Administrator"

Scenario: Backend
  Given I login as admin
  Given I am on the cars page
  When I follow "Administration"
  Then I should see "12000"

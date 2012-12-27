Feature: Add new car to the list of purchasable cars
 
  As a car seller 
  So that I can sell my car
  I want to add my car to the purchasable cars list
  
Background: Models have been added to database

  Given the following models exist:
  | name                   |
  | Volvo                  |
  | Kia                    |
  | mini                   |
  
Scenario: Add a new car
  Given I am on the cars page
  And I follow "New"
  When I set the "Price" to "17000$"
  And I set the "Cylinders" to "6"
  And I set the "Horse power" to "123"
  And I set the "Doors" to "2"
  And I check the following : air_bags, abs
  And I select "Kia" from "Car model"
  And I press "Save"
  When I am on Show of car 1
  Then I should see "Price: 17000$"
  Then I should see "Cylinders: 6"
  Then I should see "Horse power: 123"
  Then I should see "Doors: 2"
  Then I should see "Air bags: true"
  Then I should see "Abs: true"

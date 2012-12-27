# Add a declarative step here for populating the DB with cars.

Given /the following cars exist/ do |cars_table|
  cars_table.hashes.each do |car|
    # each returned element will be a hash whose key is the table header.
    #p car
    c = Car.create!(car)
  end
  #flunk "Unimplemented"
end
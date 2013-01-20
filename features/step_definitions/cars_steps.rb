# Add a declarative step here for populating the DB with cars.

Given /the following cars exist/ do |cars_table|
  cars_table.hashes.each do |car|
    # each returned element will be a hash whose key is the table header.
    #p car
    c = Car.create!(car)
  end
  #flunk "Unimplemented"
end

Given /the following models exist/ do |models_table|
  models_table.hashes.each do |model|
    # each returned element will be a hash whose key is the table header.
    m = CarModel.create!(model)
  end
  #flunk "Unimplemented"
end

When /^I set the "([^"]*)" to "([^"]*)"$/ do |field, value|
  fill_in field, :with=>value
end

When /I check the following : (.*)/ do |clist|
  clist.split(",").each do | opt |
    c = "car_" + opt.strip
    check(c)
  end
end

When /^I reload the page$/ do
  visit [ current_path, page.driver.request.env['QUERY_STRING'] ].reject(&:blank?).join('?')
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  assert page.body.index(e1) < page.body.index(e2)
  #flunk "Unimplemented"
end

Then /^I should see only cars with prices that range from "(.*)" to "(.*)"$/ do |price_from,price_to| 
cars_within_this_range=Car.where("price BETWEEN #{price_from} AND #{price_to}").count
assert(page.all('table.table tr').count.should == cars_within_this_range+1)
end







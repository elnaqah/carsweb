Then /^I should see a list of used cars$/ do 
@rows_in_db=Car.all.count
assert(page.all('table.table tr.odd').count.should == 7)
end

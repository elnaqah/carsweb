Then /^I should see a list of used cars$/ do 
@rows_in_db=Car.all.count
assert(page.all('table.table tr').count.should == @rows_in_db+1)
end

Then /^I should see "(.*)" before "(.*)"$/ do |s1,s2|

txt=page.html.to_s

assert(txt.index(s1)<txt.index(s2))
end

Then /^I should see only "(.*)" cars$/ do |brand|
cars_not_selected=Car.where(:name_not=>brand)

assert(steps "Then I should see \"#{brand}\"")
assert(steps "Then I should not see \"#{cars_not_selected}\"")

end

Then /^I should see only cars with prices that range from "(.*)" to "(.*)"$/ do |price_from,price_to| 
cars_within_this_range=Car.where("price BETWEEN #{price_from} AND #{price_to}").count
assert(page.all('table.table tr').count.should == cars_within_this_range+1)
end

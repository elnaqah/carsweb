class Car < ActiveRecord::Base
belongs_to :car_model
belongs_to :owner

 def self.search(price)
   if price
    find(:all,:conditions =>["price=?",price])
   else
   find(:all)
   end
 end

end

class Car < ActiveRecord::Base
belongs_to :car_model
#belongs_to :owner
belongs_to :user
validates :Pricefrom, :value, :presence => true
validates :Priceto, :value, :presence => true
def self.search(price_from,price_to)
   if (price_from && price_to)
    find(:all,:conditions =>["price BETWEEN #{price_from} AND #{price_to}"])
   else
   find(:all)
   end
 end


end

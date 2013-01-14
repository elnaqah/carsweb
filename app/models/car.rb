class Car < ActiveRecord::Base
belongs_to :car_model
#belongs_to :owner
belongs_to :user

def self.search(price_from,price_to,used)
   if (price_from && price_to&&used)
    find(:all,:conditions =>["price BETWEEN #{price_from} AND #{price_to} AND used =?",used])
   else
   find(:all)
   end
 end


end

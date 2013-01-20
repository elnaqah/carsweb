class Car < ActiveRecord::Base
belongs_to :car_model
#belongs_to :owner
belongs_to :user

def self.search_price_door_carid(price_from,price_to,used,doors,id)

   if(price_from&&price_to&&used&&doors&&id)
   find(:all,:conditions =>["price BETWEEN #{price_from} AND #{price_to} AND used =? AND doors=? AND car_model_id=?",used,doors,id])
   else
   find(:all)
   end

end

def self.search_price_door(price_from,price_to,used,doors)

   if(price_from&&price_to&&used&&doors)
   find(:all,:conditions =>["price BETWEEN #{price_from} AND #{price_to} AND used =? AND doors=?",used,doors])
   else
   find(:all)
   end

end

def self.search(price_from,price_to,used)
   if (price_from && price_to&&used)
    find(:all,:conditions =>["price BETWEEN #{price_from} AND #{price_to} AND used =?",used])
   else
   find(:all)
   end
end

def self.search_price_carid(price_from,price_to,used,id)
  if(price_from && price_to && used && id)
   find(:all,:conditions =>["price BETWEEN #{price_from} AND #{price_to} AND used =? AND car_model_id=?",used,id])
  else
   find(:all)
  end
end
end

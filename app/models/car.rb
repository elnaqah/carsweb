class Car < ActiveRecord::Base
belongs_to :car_model
belongs_to :owner
end

class CarModel < ActiveRecord::Base
has_many :cars
has_many :owners, :through => :cars
end

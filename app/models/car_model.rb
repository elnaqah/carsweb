class CarModel < ActiveRecord::Base
has_many :cars
#has_many :owners, :through => :cars
has_many :users, :through => :cars
def self.get_models_names
  #CarModel.select(:name).map(&:name).uniq
  CarModel.all.map {|m| [m.name, m.id]}
end
end

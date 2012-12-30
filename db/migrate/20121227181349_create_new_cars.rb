class CreateNewCars < ActiveRecord::Migration
  def change
    create_table :new_cars do |t| 
      t.integer :year
      t.integer :cylinders
      t.integer :horse_power
      t.integer :doors
      t.boolean :air_bags
      t.boolean :abs
      t.integer :price
      t.references 'car_model'
      t.timestamps
    end
  end

  
end

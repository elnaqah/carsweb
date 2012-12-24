class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.date :year
      t.integer :cylinders
      t.integer :horse_power
      t.integer :doors
      t.boolean :air_bags
      t.boolean :abs
      t.integer :price
      t.references 'car_model'
      t.references 'owner'

      t.timestamps
    end
  end
end

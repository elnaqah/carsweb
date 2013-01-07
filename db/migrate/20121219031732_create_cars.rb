class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.date :year
      t.integer :cylinders
      t.integer :horse_power
      t.integer :doors
      t.boolean :air_bags
      t.boolean :abs
      t.references 'car_model'
      t.references 'user'

      t.timestamps
    end
  end
end

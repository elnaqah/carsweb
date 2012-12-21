class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.date :year
      t.string :specs
      t.integer :engin_size
      t.string :gearbox
      t.integer :shifts
      t.string :type
      t.integer :cylinders
      t.integer :valves
      t.boolean :injection
      t.string :torque
      t.integer :horse_power
      t.boolean :drive_wheels
      t.integer :seats
      t.integer :doors
      t.float :fuel_consumption
      t.integer :fuel_tank
      t.boolean :air_bags
      t.boolean :air_bags_front
      t.boolean :electric_seat
      t.boolean :abs
      t.boolean :ebd
      t.boolean :esp
      t.boolean :alarm
      t.integer :tier_size
      t.boolean :front_fog_light
      t.boolean :rear_fog_light
      t.boolean :electric_mirrors
      t.boolean :electric_windows

      t.timestamps
    end
  end
end

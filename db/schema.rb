# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121219031732) do

  create_table "cars", :force => true do |t|
    t.string   "model"
    t.date     "year"
    t.string   "specs"
    t.integer  "engin_size"
    t.string   "gearbox"
    t.integer  "shifts"
    t.string   "type"
    t.integer  "cylinders"
    t.integer  "valves"
    t.boolean  "injection"
    t.string   "torque"
    t.integer  "horse_power"
    t.boolean  "drive_wheels"
    t.integer  "seats"
    t.integer  "doors"
    t.float    "fuel_consumption"
    t.integer  "fuel_tank"
    t.boolean  "air_bags"
    t.boolean  "air_bags_front"
    t.boolean  "electric_seat"
    t.boolean  "abs"
    t.boolean  "ebd"
    t.boolean  "esp"
    t.boolean  "alarm"
    t.integer  "tier_size"
    t.boolean  "front_fog_light"
    t.boolean  "rear_fog_light"
    t.boolean  "electric_mirrors"
    t.boolean  "electric_windows"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end

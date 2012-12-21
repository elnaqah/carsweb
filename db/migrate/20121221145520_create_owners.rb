class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :tele_number
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end

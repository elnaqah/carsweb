class AddUsedToCars < ActiveRecord::Migration
  def change
    add_column :cars, :used, :boolean

  end
end

class AddTimeToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :time, :string
  end
end

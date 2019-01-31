class AddLikesToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :likes, :integer, :null => false, :default => 0
  end
end

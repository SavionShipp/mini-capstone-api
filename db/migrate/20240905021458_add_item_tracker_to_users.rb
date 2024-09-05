class AddItemTrackerToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :item_tracker, :integer
  end
end

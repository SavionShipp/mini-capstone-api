class RemoveImagesFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :image_id, :string
  end
end

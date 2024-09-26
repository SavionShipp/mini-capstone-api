class RenameUrlColumnToImageId < ActiveRecord::Migration[7.1]
  def change
    rename_column :products, :url, :image_id
  end
end

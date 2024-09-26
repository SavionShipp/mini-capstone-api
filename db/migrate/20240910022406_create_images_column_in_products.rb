class CreateImagesColumnInProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :url, :string
  end
end

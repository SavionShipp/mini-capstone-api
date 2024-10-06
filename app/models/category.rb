class Category < ApplicationRecord
  has_many:category_products
  has_many:products, through: :category_products

  # def products
  #   products = []
  #   category_products = CategoryProduct.where(category_id: id)
  #   category_products.each do |cp|
  #     products << Products.find_by(id: product_id)
  #   end
  # end
end

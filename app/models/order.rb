class Order < ApplicationRecord
  belongs_to:user
  has_many:products, through: :carted_products
end

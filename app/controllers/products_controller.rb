class ProductsController < ApplicationController
  # def first_product
  #   product = Product.all
  #   render json: {message: product}
  # end

  def product_list
    @products = Product.all
    render template: "products/index"
  end

  def product_one
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end
end

class ProductsController < ApplicationController
  # def first_product
  #   product = Product.all
  #   render json: {message: product}
  # end

  def list
    @product = Product.all
    render template: "products/index"
  end
end

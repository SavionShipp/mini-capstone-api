class ProductsController < ApplicationController

  def one_product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def multi_product
    product = Product.all
    render json: product
  end

  def create
    @product = Product.new(
      name: "stapler",
      price: 3,
      image_url: "https://bostitchoffice.com/media/catalog/product/cache/8d622783d0b606912c99e4ab1818c82c/b/4/b440-black_1_main_300dpi.jpg",
      description: "allow you to put another sheets of paper together so that they are stuck together"
    )
    @product.save
    render template: "products/show"
  end
end

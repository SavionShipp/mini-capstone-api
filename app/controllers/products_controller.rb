class ProductsController < ApplicationController

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def index
    @products = Product.all
    render template: "products/index"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      item_tracker: params[:item_tracker]
    )
    if @product.save
      render template: "products/show"
    else
      render json: {message: @product.errors.full_messages}
    end
  end

  def update
    @product = Product.find_by(id: params[:id]) 
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.item_tracker = params[:item_tracker] || @product.item_tracker
    @product.save
    render template: "products/show"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "your product is gone"}
  end
end

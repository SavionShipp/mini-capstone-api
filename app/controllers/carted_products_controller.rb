class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    render :index
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      order_id: params[:order_id],
      quantity: params[:quantity],
      status: params[:status]
    )
    @carted_product.save
    render :show
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.destroy
    render json: {message: "product is gone"}
  end
end

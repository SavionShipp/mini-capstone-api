class OrdersController < ApplicationController
  def create
    @order = Order.new(
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
      user_id: current_user.id
    )
    @order.save
    render :show
  end

  def index
    @orders = Order.all
    render :index
  end

end

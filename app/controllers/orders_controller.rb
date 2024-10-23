class OrdersController < ApplicationController
  def create
    cal_subtotal = 0
    @carted_products.each do |cp|
      cal_subtotal += cp.quantity * cp.price
    end
    
    cal_tax = cal_subtotal * 0.09
    cal_total = cal_subtotal + cal_tax 

    @order = Order.new(
      subtotal: cal_subtotal,
      tax: cal_tax,
      total: cal_total,
      user_id: current_user.id
    )
    @order.save

    @carted_products.each do |cp|
      cp.order_id = @order_id
      cp.status = "purchased"
      cp.save
    end
    render :show
  end

  def index
    @orders = Order.where(user_id: current_user.id)
    render :index
  end

end

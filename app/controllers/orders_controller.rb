class OrdersController < ApplicationController
  def index
    @orders = Order.all_by_date
  end

  def show
    find_order
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end

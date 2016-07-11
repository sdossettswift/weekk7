class Api::OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find_by id: params[:id]
  end
end

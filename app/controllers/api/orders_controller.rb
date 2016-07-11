class Api::OrdersController < ApplicationController
protect_from_forgery with: :null_session

before_action :doorkeeper_authorize!
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find_by id: params[:id]
  end

  def delete
    @order = Order.find_by id: params[:id]
    @order.destroy
    head :ok
  end

  def create
    @order = Order.new params.require(:order).permit(:product_name, :order_date)
    if @order.save
      render :show
    else
      render json: @order.errors, status: 422
    end
  end

  def update
    @order = Order.find_by id: params[:id]
    if @order.update params.require(:order).permit(:product_name, :order_date)
      render :show
    else
      render json: @order.errors, status: 422
    end
  end

end

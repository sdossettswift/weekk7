class Api::OrdersController < ApplicationController
protect_from_forgery with: :null_session

before_action :doorkeeper_authorize!
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find_by id: params[:id]
  end
end

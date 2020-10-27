class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end
  
  def show
    @cart = Cart.find(params[:id])
  end
end

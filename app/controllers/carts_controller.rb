class CartsController < ApplicationController
  def index
    # @carts = Cart.all
    @carts = policy_scope(Cart)
  end
  
  def show
    authorize @cart
    @cart = Cart.find(params[:id])
  end
end

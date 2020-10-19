class ProductCartsController < ApplicationController
  def index
    @product_carts = ProductCart.all
  end


  private

  def select_produtc_cart
    @product_cart = ProductCart.select(current_user)
  end


end

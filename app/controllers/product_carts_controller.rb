class ProductCartsController < ApplicationController
  def index
    @product_carts = policy_scope(ProductCart)
 end

  private

  def select_produtc_cart
    @product_cart = ProductCart.select(current_user)
  end


end

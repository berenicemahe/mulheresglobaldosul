class ProductCartsController < ApplicationController
  def create
    cart = current_user.carts.find_or_create_by(
      status: false
    )

    @product = Product.find(params[:product_id])

    @product_cart = ProductCart.new
    @product_cart.cart = cart
    @product_cart.product = @product

    if @product_cart.save
      redirect_to products_path
    end
  end

  def destroy
    product_cart = ProductCart.find(params[:id])
    @product = product_cart.product
    product_cart.destroy

    redirect_to products_path
  end
end

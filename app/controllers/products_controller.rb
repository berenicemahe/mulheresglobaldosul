class ProductsController < ApplicationController

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to product_path(@product.id)
    else
      render :edit
    end
  end


  private

  def product_params
    params.require(:product).permit(:name, :gender, :description, :size, :type, :color, :price)
  end
end

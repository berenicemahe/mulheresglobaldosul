class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :show, :destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @products = Product.search(params[:query])
    else
      @products = Product.paginate(:page => params[:page], per_page: 2)
    end
  end

  def show
    authorize @product
    @product = Product.find(params[:id])
  end

  def new
    @product = current_user.products.new
    authorize @product
  end

  def create
    authorize @product
    @product = current_user.products.new(product_params)

    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    authorize @product
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end

  def search
    authorize @products
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :gender, :description, :size, :type, :color, :price, :photo)
  end

end

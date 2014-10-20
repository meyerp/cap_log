class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: [:show, :edit, :update, :destroy]

 respond_to :html, :xml, :js

  def index
    @products = current_user.products
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new
    @product.user_id = current_user.id
    respond_with(@product)
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    @product.save
    respond_with(@product)
  end

  def update
    @product.update(product_params)
    respond_with(@product)
  end

  def destroy
    @product.destroy
    respond_with(@product)

  end

  def destroy_picture
    @product.product_picture = nil
    @product.save
  end

  private
    def set_product
      @product = current_user.products.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:product_picture, :product_name, :product_category, :product_subcategory, :product_alone_volume, :products_batch_volume, :amount_per_batch, :product_alone_mass, :products_lot_mass, :product_reference)
    end
end

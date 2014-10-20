class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

respond_to :html, :xml, :js

  def index
    @products = current_user.company.products
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new

    respond_with(@product)
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.company_id = current_user.company_id
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

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:picture, :name, :category, :subcategory, :alone_volume, :batch_volume, :amount_per_batch, :alone_mass, :batch_mass, :reference)
    end
end

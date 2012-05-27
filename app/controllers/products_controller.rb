class ProductsController < ApplicationController
  
  def index
    @products = Product.order('LOWER(name) asc').all
  
    end
    
  def show
    @product = Product.find(params[:id])
  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(params[:product])
    
    if @product.save
      redirect_to root_url, notice: "New Product Added!"
    else
      render :new
    end
  end
end
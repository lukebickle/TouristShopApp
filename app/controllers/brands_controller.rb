class BrandsController < ApplicationController
  
  def show
    @brand = Brand.find(params[:id])
    @products = @brand.products.order("LOWER(name) asc")                                     
    
  end
end

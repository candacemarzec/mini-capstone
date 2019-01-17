class Api::ProductsController < ApplicationController


  def all_products
    @products = Product.all
    render 'all_products.json.jbuilder'
  end

  def first_product
    @product = Product.first
    render 'first_product.json.jbuilder'
  end 
  
  def second_product
    @product = Product.second
    render 'second_product.json.jbuilder'
  end   
end

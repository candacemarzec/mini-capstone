class ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def new
    @suppliers = Supplier.all
    render 'new.html.erb'
  end

  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

  def create
    @suppliers = Supplier.all
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      description: params[:description],
      supplier_id: params[:supplier_id])
    @product.save
    redirect_to "/products"  
  end

  def edit
    @suppliers = Supplier.all
    @product = Product.find(params[:id])
  end

  def update
   @product = Product.find(params[:id])
   @product.name = params[:name] 
   @product.price = params[:price] 
   @product.description = params[:description] 
   @product.supplier_id = params[:supplier_id]
   @product.save
   redirect_to "/products/#{@product.id}"
  end

  def destroy 
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end

end

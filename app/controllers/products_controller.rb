class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def create
  	@product = Product.new(params[:product])
  	if @product.save
  		redirect_to @product
  		flash[:success] = "Product successfully added"
  	else
  		render :new
  	end
  end

  def update
  	@product = Product.find(params[:id])
  	if @product.update_attributes(params[:product])
  		flash[:success] = "Product updated successfully"
      redirect_to @product
  	else
  		redirect_to '/products/'
  		flash[:failure] = "Product could not be updated"
  	end
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  	redirect_to '/products/'
  end
end

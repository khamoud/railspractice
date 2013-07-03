class CommentsController < ApplicationController
  def index
  	@comments = Comment.all
  end

  def new
  	@product = Product.find(params[:input_html])
  	@comment = Comment.new
  end

  def create
  	@comment = Comment.create(params[:comment])
  		redirect_to product_path(@product)
  end

  def show
  	@comment = Comment.find(params[:id])
  end

  def edit
  	@comment = Comment.find(params[:id])
  end

  def updated
  end

  def destroy
  end
end

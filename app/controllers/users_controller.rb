class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:success] = "Successfully registered"
  		redirect_to @user
  	else
  		flash[:failure] = @user.errors.full_messages
  		render :new
  	end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes!(params[:user])
  		flash[:success] = 'successfully updated attributes'
  		redirect_to @user
  	else
      flash[:failure] = @user.errors.full_messages
      render :edit
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users/'
  end

end

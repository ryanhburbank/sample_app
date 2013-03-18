class UsersController < ApplicationController
  
  def show
  		@user = User.find(params[:id])
  end
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save 
      flash[:success] = "An account for you #{@user.name}, you go #{@user.name}!"
      redirect_to @user 
  	else
      flash[:error] = "No account for you!"
      render 'new'
  	end
  end
end

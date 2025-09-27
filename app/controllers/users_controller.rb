class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Succesfully Created #{@user.name} User."
      redirect_to @product
    else
      flash[:notice] = "Error in Creating User check credentials."
      render :new
    end
  end

  def show
  end

  def update
  end

  def delete
  end

  private
  def user_params
    params.require(:users).permit(:name, )
  end
end

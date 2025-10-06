class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    #only for get request
    @user = User.new
  end

  def create

    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Succesfully Created #{@user.name} User."
      render :index
    else
      flash[:notice] = "Error in Creating User check credentials."
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    # render plain: "name :- #{user[:name]}, 
    # \nusername :- #{user[:username]}, 
    # \nE-mail :- #{user[:email]},"
    # \nparams? #{params}"
    # render plain: "params #{params[:user]}"
  end

  def edit
    #only for get request 
    @user = User.find(params[:id])
  end

  def update
    #put and patch request is going to execute here
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = " # Successfully Updated"
      render :index
    else
      flash[:notice] = "Failed To update"
      render :edit
    end
  end

  def delete
  end

  private
  def user_params
    params.require(:user).permit(:username, :name, :email, :password)
  end
end

class UsersController < ApplicationController
  layout "custom"
  def index
    # byebug
    @users = User.all
  end

  def new
    # byebug
    #only for get request
    @user = User.new
  end

  def create

    @user = User.new(user_params)
    if @user.save
      # flash[:notice] = "Succesfully Created #{@user.name} User."
      redirect_to users_url, notice: "Succesfully Created #{@user.name} User."
    else
      # flash[:notice] = "Error in Creating User check credentials."
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # id = params.extract_value(:id)
    # @user = User.find(id)

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
      redirect_to '/users'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
    flash[:notice] = "#{@user.name}User is Deleted Succesfully."
  end

  private
  def user_params
    params.require(:user).permit(:username, :name, :email, :password)
  end
end

class UsersController < ApplicationController
=begin
  layout "custom"
  before_action :set_user, only: %w[edit show update destroy]
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

    # @user = User.new(user_params)
    # if @user.save
    #   # flash[:notice] = "Succesfully Created #{@user.name} User."
    #   redirect_to users_url, notice: "Succesfully Created #{@user.name} User."
    # else
    #   # flash[:notice] = "Error in Creating User check credentials."
    #   render :new, status: :unprocessable_entity
    # end
  end

  def show
    # id = params.extract_value(:id)
    # @user = User.find(id)

    # render plain: "name :- #{user[:name]}, 
    # \nusername :- #{user[:username]}, 
    # \nE-mail :- #{user[:email]},"
    # \nparams? #{params}"
    # render plain: "params #{params[:user]}"
  end

  def edit
    #only for get request 
  end

  def update
    #put and patch request is going to execute here
    if @user.update(user_params)
      flash[:notice] = " # Successfully Updated"
      redirect_to '/users'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
    flash[:notice] = "#{@user.name}User is Deleted Succesfully."
  end

  private
  def user_params
    params.require(:user).permit(:username, :name, :email, :password)
  end

  def set_user
    @user = User.find_by(id: params[:id])
    # render json: {message: "User not found with this id: #{params[:id]}"} unless @user
  end
=end
end
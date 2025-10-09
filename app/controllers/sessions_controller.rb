=begin
class SessionsController < ApplicationController
  layout "custom"
  def index
    @users = User.all
  end

  def new
    
  end

  def create
    @user = User.find(session_params)
    if @user.save
      flash[:message] = "User Created Successfully."
      redirect_to :index
    else
      flash[:message] = "Error in Creting User."
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
  end

  private
  def session_params
    params.expect(user: [:username, :name, :email, :password_digest])
  end
end
=end
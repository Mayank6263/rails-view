class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    if @user.save
  end

  def show
  end

  def update
  end

  def delete
  end

  private
  def user_params
end

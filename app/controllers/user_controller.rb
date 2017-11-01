class UserController < ApplicationController
  def index
    @user = User.all
  end

  def create
    User.create(user_params)
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def show
  @user = User.find(params[:id])
  end

end

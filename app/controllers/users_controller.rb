class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.create(user_params)
    # redirect_to @user
  end

  def edit
    # @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
    # if @user.update_attributes(user_params)
    #   redirect_to @user
    # else
    #   render ('edit')
    # end
  end

  def destroy
    user = User.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  # do I need to do private stuff here?
end

class UsersController < ApplicationController

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

  # do I need to do private stuff here?
end

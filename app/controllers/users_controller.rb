class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    log_in(@user)
    redirect_to root_path
  end

  def log_in(user)
    session[:user_id] = user.id
    current_user
    # p "#{@current_user.id}".inspect
  end



end

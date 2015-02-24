class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def signup
    if params[:password] == params[:password_confirmation]
    @new_user = User.create(name: params[:name], password: params[:password], password_confirmation: params[:password_confirmation])
    session[:user_id] = @new_user.id
    redirect_to @new_user
    else
    redirect '/signup'
    end
  end

end

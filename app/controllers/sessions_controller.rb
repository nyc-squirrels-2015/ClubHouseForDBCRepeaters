class SessionsController < ApplicationController

  def signin

  end

  def login
    p "*"*30
    p params
    p "*"*30
     user = User.authenticate(session_params)
    if user
      session[:user_id] = user.id
      redirect '/posts'
    else
      redirect '/login'
    end
  end

  def logout
    session.clear
  end

  private

  def session_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end

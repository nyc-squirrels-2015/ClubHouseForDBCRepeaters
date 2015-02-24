class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def ensure_current_user
    redirect_to '/' unless current_user
  end

  def current_user
    User.find(session[:user_id])
  end

  def donation
    render '/donation'
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= Business.find(session[:business_id]) if session[:business_id]
  end
  helper_method :current_user

  def logged_in?
    current_user.present?
  end

  def authorize
    redirect_to '/login' unless current_user
  end


end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Pundit

  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :user_name
    devise_parameter_sanitizer.for(:account_update) << :user_name
    devise_parameter_sanitizer.for(:sign_up) << :location
    devise_parameter_sanitizer.for(:account_update) << :location
  end

  def after_sign_up_path_for(resource)
    ailments_path
  end

  private

  def require_sign_in
    unless current_user
      flash[:error] = "You must be logged in to do that"

    end
  end


end

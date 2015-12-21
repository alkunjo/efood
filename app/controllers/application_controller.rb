class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected
	  def after_sign_in_path_for(catering)
	    food_caterings_path
	  end
	  def after_sign_out_path_for(catering)
	    new_catering_session_path
	  end
	  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name; :phone; :address; :capacity; :logo; :username; :email; :password; :password_confirmation
      devise_parameter_sanitizer.for(:account_update)  << :name; :phone; :address; :capacity; :logo; :username; :email; :password; :password_confirmation
    end
end

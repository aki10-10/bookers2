class ApplicationController < ActionController::Base
  #before_action :authenticate_user!, except: [:top, :about, :public_action]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    user_path(current_user.id)
  end
  
  def after_sign_out_path_for(resourse)
    root_path
  end
  
  private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    #devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  # 名前とパスワードでlog in
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up){|u| u.permit(:name, :email, :password, :password_confirmation)}
  	devise_parameter_sanitizer.permit(:sign_in){|u| u.permit(:name, :password, :password_confirmation)}
  end

  # login, logout後の遷移先
  def after_sign_in_path_for(resource)
  	user_path(resource)
  end

  def after_sign_out_path_for(resource)
  	homes_top_path
  end
end

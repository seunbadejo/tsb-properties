class ApplicationController < ActionController::Base
  # reset captcha code after each request for security
  # after_action :reset_last_captcha_code!
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    @show_sidebar = true if account_signed_in?
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :telephone, :url, :details, :image, :image_cache, :cover_image, :cover_image_cache, :company])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end

class ApplicationController < ActionController::Base
  include ShopifyApp::LoginProtection
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  @@total = []
  def after_sign_in_path_for(resource)
  a =resource.last_sign_in_at.to_time
  b = Time.now
  c = (a - b)/60.to_i.round
  d = c.abs
  @@total << d
  super(resource)
  end
def after_sign_out_path_for(resource_or_scope)
    super
  end
  protected
 

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

end





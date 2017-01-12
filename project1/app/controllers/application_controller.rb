class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # rescue_from CanCan::AcscessDenied do |exception|
  #     respond_to do |format|
  #       format.json { head :forbidden, content_type: 'text/html' }
  #       format.html { redirect_to main_app.root_url, notice: exception.message }
  #       format.js   { head :forbidden, content_type: 'text/html' }
  #     end
  #   end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :first_name, :last_name, :email, :password, :password_confirmation,])

    devise_parameter_sanitizer.permit(:account_create, keys: [:name, :first_name, :last_name, :email, :password, :password_confirmation])
  end
   private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

end

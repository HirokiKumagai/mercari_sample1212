class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # ログインユーザーによってのみ実行可能という指定を行う。
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    end
end

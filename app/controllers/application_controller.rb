class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :authenticate_user!
  load_and_authorize_resource unless: :devise_controller?

  rescue_from Cancan::AccessDenied do |_exception|
    redirect_to root_path, alert: "Você não tem permissão para acessar essa página"
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :authenticate_user!
  load_and_authorize_resource unless: :devise_controller?
end

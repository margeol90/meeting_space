class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user! # devise
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_notifications, if: :current_user
  include Pundit::Authorization

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  #  include first name, last name and avatar for users
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name avatar])
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def set_notifications
    notifications = Notification.where(recipient: current_user).newest_first.limit(10)
    @unread = notifications.unread
    @read = notifications.read
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end

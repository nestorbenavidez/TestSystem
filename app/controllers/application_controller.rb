class ApplicationController < ActionController::Base
  before_action :require_login
  def not_authenticated
    redirect_to login_url, :alert => "First login to access this page."
  end
end

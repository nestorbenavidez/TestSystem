class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  layout 'login'
  def new
    @user = User.new
  end

  def create
    user = login(params[:username], params[:password])
    if user
      redirect_back_or_to pages_dashboard_path, :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  # Never trust parameters from the scary internet, only allow the white list through.
  def session_params
    params.require(:session).permit(:username, :password)
  end

end

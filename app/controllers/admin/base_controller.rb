class Admin::BaseController < ApplicationController
  def index
    if !is_logged_in?
      redirect_to url_for(admin_login_path)
    end
  end
  def login
  end

  def create
    user = User.find_by(:username => params[:base][:username])
    if user && user.authenticate(params[:base][:password])
      log_in user
      redirect_to (admin_root_path)
    else
      flash.now[:danger] = "Invalid Username/Password Combination"
    end
  end
end

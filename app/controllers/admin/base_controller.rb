class Admin::BaseController < ApplicationController
  before_action :test_is_admin, except: [:create, :login, :destroy, :forbidden]
  layout "admin", except: [:create, :login, :forbidden, :destroy]
  def index
  end

  def login
    if !admin_user_exists?
      redirect_to new_admin_user_path
    else
      render layout: "login"
    end

  end

  def create
    user = User.find_by(:username => params[:base][:username])
    if user && user.authenticate(params[:base][:password])
      log_in user
      redirect_to (admin_root_path)
    else
      flash.now[:danger] = "Invalid Username/Password Combination"
      render "login", layout: "login"
    end
  end

  def destroy
    log_out
    redirect_to admin_root_path
  end

  def forbidden
    render :stop
  end
  private

  def admin_user_exists?
    return !User.find_by(is_admin: true).nil?
  end

  def test_is_admin
    if !is_logged_in?
      redirect_to admin_login_path
    elsif !is_admin?
      redirect_to admin_forbidden_path
    end
  end

end

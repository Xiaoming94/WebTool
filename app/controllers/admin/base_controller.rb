class Admin::BaseController < ApplicationController
  def index
    if !is_logged_in?
      redirect_to url_for(admin_login_path)
    end
  end
  def login
  
  end
end

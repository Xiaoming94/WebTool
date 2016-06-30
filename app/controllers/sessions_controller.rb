class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(:username => params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      redirect_to url_for(:controller => :webpage, :action => :index)
    else
      flash[:danger] = 'Invalid User/Password combination'
      render 'new'
    end
  end

  def destroy
  end
end

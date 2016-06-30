class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      #Handle success later
    else
      render 'new'
    end
  end
end

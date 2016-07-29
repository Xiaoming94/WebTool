class Admin::ModalsController < ApplicationController
  def picture
    @pictures = Image.all
  end

  def remote_picture
  end

  def link
  end

  def addpicture
  end

  def addlink
  end
end

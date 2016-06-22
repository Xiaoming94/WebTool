class AdminpanelController < ApplicationController
  def index
  end

  def newpost
    @article = Article.new
  end
end

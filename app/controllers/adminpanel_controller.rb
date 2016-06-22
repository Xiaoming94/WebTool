class AdminpanelController < ApplicationController
  def index
  end

  def newpost
    @article = Article.new
  end

  def posts
    @articles = Article.all
  end
end

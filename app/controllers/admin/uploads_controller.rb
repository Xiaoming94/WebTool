class Admin::UploadsController < Admin::BaseController
  def index
    @images = Image.all
    @files  = Item.all
  end
end

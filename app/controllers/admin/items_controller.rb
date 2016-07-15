class Admin::ItemsController < Admin::BaseController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_path, notice: "The resume #{@image.name} has been uploaded"
    else
      render "new"
    end
  end

  def destroy
    @item = Image.find(params[:id])
    @item.destroy
    redirect_to admin_items_path, notice: "The resume #{@image.name} has been deleted"
  end

  private
    def image_params
      params.require(:item).permit(:name, :attachment)
    end
end

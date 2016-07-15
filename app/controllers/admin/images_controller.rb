class Admin::ImagesController < Admin::BaseController
  def index
    @images = Resume.all
  end

  def new
    @image = Resume.new
  end

  def create
    @image = Resume.new(resume_params)
    if @image.save
      redirect_to admin_resumes_path, notice: "The resume #{@image.name} has been uploaded"
    else
      render "new"
    end
  end

  def destroy
    @image = Resume.find(params[:id])
    @image.destroy
    redirect_to admin_resumes_path, notice: "The resume #{@image.name} has been deleted"
  end

  private
    def resume_params
      params.require(:resume).permit(:name, :attachment)
    end
end

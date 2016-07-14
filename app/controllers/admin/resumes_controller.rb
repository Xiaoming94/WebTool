class Admin::ResumesController < Admin::BaseController
  def index
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      redirect_to admin_resumes_path, notice: "The resume #{@resume.name} has been uploaded"
    else
      render "new"
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to admin_resumes_path, notice: "The resume #{@resume.name} has been deleted"
  end

  private
    def resume_params
      params.require(item.underscore.to_sym).permit(:name, :attachment, :type)
    end

    def item
      params[:type]
    end
end

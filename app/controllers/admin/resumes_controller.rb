class Admin::ResumesController < Admin::BaseController
  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    set_type @resume
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

  def set_type (resume)
  end

  private
    def resume_params
      params.require(:resume).permit(:name, :attachment)
    end
end

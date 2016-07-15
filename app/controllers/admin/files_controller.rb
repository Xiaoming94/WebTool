class Admin::FilesController < Admin::ResumesController
  #Overrides
  def index
    @resumes = Stuff.all
  end
end

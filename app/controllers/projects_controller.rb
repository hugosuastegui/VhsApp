class ProjectsController < ApplicationController
  
  def index
    @project = Project.all
  end

  def show
  end

end

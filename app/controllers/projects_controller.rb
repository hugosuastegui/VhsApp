class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
    @concepts = Concept.all
  end

  def show
  end

end

class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
    @concepts = Concept.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params.require(:project).permit(:title, :account, :category, :description, :revenue))

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: "Your project is now live."}
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    respond_to do |format|
      if @project.update(params.require(:project).permit(:title, :account, :category, :description, :revenue))
        format.html { redirect_to projects_path, notice: "Your project was succesfully updated."}
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @project = Project.find(params[:id])
  end

end

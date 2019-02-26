class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :toggle_status]
  layout "projects"
  
  def index
    @projects = Project.all
    @page_title = "VHS | Projects"
  end

  def new
    @project = Project.new
    @page_title = "VHS | New Project"
  end

  def create
    @project = Project.new(project_params)

    # 1st attempt to get nested concepts being built into the projects' show action

    # @project = Project.new(params.require(:project).permit(:title, :account, :category, :client, :location, :revenue, :volume, concepts_attributes: [:subject, :category, :subcategory, :description, :amount, :invoice]))

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: "Your project is now live."}
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @page_title = "VHS | Edit " + @project.title
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to projects_path, notice: "Your project was succesfully updated."}
      else
        format.html { render :edit }
      end
    end
    @page_title = "VHS | Update " + @project.title
  end

  def show
    @page_title = "VHS | " + @project.title
    @project.concepts.build
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_path, notice: "Project was removed" }
    end
  end

  def toggle_status
    if @project.open?
      @project.closed!
    elsif @project.closed?
      @project.open!
    end

    redirect_to projects_path, notice: 'Project status updated succesfully.'
  end

  private

  def set_project
    @project = Project.find(params[:id])
    session[:project] = params[:id]
  end

  def project_params
    params.require(:project).permit(:title, :account, :category, :description, :client, :location, :revenue, :volume)
  end
end

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :toggle_status]
  
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params.require(:project).permit(:title, :account, :category, :client, :location, :revenue, :volume))

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: "Your project is now live."}
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @project.update(params.require(:project).permit(:title, :account, :category, :description, :revenue))
        format.html { redirect_to projects_path, notice: "Your project was succesfully updated."}
      else
        format.html { render :edit }
      end
    end
  end

  def show
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
  end

end

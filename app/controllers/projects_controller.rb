class ProjectsController < ApplicationController

before_action :authenticate_user!

def new
   @project = current_user.projects.new
end

def create
  @project = current_user.projects.new(project_params)
 
  @project.save
  redirect_to @project
end


def show
  @project = current_user.projects.find(params[:id])
end

def index
  @projects = current_user.projects.all
end

def edit
  @project = current_user.projects.find(params[:id])
end

def update
  @project = current_user.projects.find(params[:id])
 
  if @project.update(project_params)
    redirect_to @project
  else
    render 'edit'
  end
end

def destroy
  @project = current_user.projects.find(params[:id])
  @project.destroy
 
  redirect_to projects_path
end
 
def destroy
  @project = current_user.projects.find(params[:id])
  @project.destroy
 
  redirect_to projects_path
end
 
private
  def project_params
    params.require(:project).permit(:name,:desc,:estTime)
  end

end


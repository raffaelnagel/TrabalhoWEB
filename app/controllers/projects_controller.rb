class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    @project.save
    redirect_to @project
  end
  
  def show
    @project = Project.find(params[:id])
  end

def index
  @projects = Project.all #TODO tem q troca a porcaria da foreign key pelo nome do bagulho, maneira facil existe? 
end

def edit
  @project = Project.find(params[:id])
end

def update
  @project = Project.find(params[:id])
 
  if @project.update(project_params)
    redirect_to @project
  else
    render 'edit'
  end
end

def destroy
  @project = Project.find(params[:id])
  @project.destroy
 
  redirect_to projects_path
end

#private
#  def project_params
#    params.require(:project).permit(:leader_id, :name)
#  end
  
end

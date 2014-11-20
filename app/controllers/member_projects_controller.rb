class MemberProjectsController < ApplicationController
  before_action :set_member_project, only: [:show, :edit, :update, :destroy]

  # GET /member_projects
  # GET /member_projects.json
  def index
    @member_projects = MemberProject.all
  end

  # GET /member_projects/1
  # GET /member_projects/1.json
  def show
  end

  # GET /member_projects/new
  def new
    @member_project = MemberProject.new
  end

  # GET /member_projects/1/edit
  def edit
  end

  # POST /member_projects
  # POST /member_projects.json
  def create
    @member_project = MemberProject.new(member_project_params)

    respond_to do |format|
      if @member_project.save
        format.html { redirect_to @member_project, notice: 'Member project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @member_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @member_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_projects/1
  # PATCH/PUT /member_projects/1.json
  def update
    respond_to do |format|
      if @member_project.update(member_project_params)
        format.html { redirect_to @member_project, notice: 'Member project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_projects/1
  # DELETE /member_projects/1.json
  def destroy
    @member_project.destroy
    respond_to do |format|
      format.html { redirect_to member_projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_project
      @member_project = MemberProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_project_params
      params.require(:member_project).permit(:members_id, :projects_id)
    end
end

class MembersController < ApplicationController
def new
  @member = Member.new
  
end

def create
  @member = Member.new(member_params) 
#render :text => CGI.escapeHTML(@member.inspect)  
  @member.save
  redirect_to @member
end

def show
  @member = Member.find(params[:id])   
 
  @role = Role.find(@member.role_id)   
end

def index
  @members = Member.all 
end

def edit
  @member = Member.find(params[:id])
end

def update
  @member = Member.find(params[:id])
 
  if @member.update(member_params)
    redirect_to @member
  else
    render 'edit'
  end
end

def destroy
  @member = Member.find(params[:id])
  @member.destroy
 
  redirect_to roles_path
end

private
  def member_params
   
    params.require(:member).permit(:name,:isleader, :role_id )
  end

end

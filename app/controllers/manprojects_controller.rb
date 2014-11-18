class ManprojectsController < ApplicationController
def new
  @members = Member.all 
  @manproject = Manproject.new
  #render :text => CGI.escapeHTML(@manproject.inspect)
   
end

def create
  #render :text => CGI.escapeHTML(@data.inspect)
  
  data=params[:data]
  #desfaz os anteriores
  @manprojects = Manproject.all
  @manprojects.each do |x| 
     if data["idProject"]==x["idProject"].to_s  #descobrir q o string dava false com o integer me custou 30 min
       #render :text => CGI.escapeHTML(x["idProject"].inspect)
       x.destroy
     end
  end 
  
  
  data.each do |id|    
    if id[0]!="idProject" and id[1]=="1" #se nao for o primeiro esquema do arrray, e se foi selecionado     
      #render :text => CGI.escapeHTML(id.inspect)
      ##<Manproject id: nil, idProject: 1, idMember: nil, isLeader: nil, created_at: nil, updated_at: nil>
      @manproject = Manproject.new
      @manproject.idProject=data["idProject"]
      @manproject.idMember=id[0]
      #os outros sao tudo nil
      @manproject.save
    end
  end
  
  #render 'index' #prq nao funciona???
  #render :text => CGI.escapeHTML(data["idProject"].inspect)
end
#
#
#def show
#  @manproject = Manproject.find(params[:id])
#end
#
def index
  @manprojects = Manproject.all
  @projects = Manproject.select(:idProject).map(&:idProject).uniq
  @members = Member.all 
end
#
#def edit
#  @manproject = Manproject.find(params[:id])
#end
#
#def update
#  @manproject = Manproject.find(params[:id])
# 
#  if @manproject.update(manproject_params)
#    redirect_to @manproject
#  else
#    render 'edit'
#  end
#end
#
#def destroy
#  @manproject = Manproject.find(params[:id])
#  @manproject.destroy
# 
#  redirect_to manprojects_path
#end
# 
#def destroy
#  @manproject = Manproject.find(params[:id])
#  @manproject.destroy
# 
#  redirect_to manprojects_path
#end
# 
#private
#  def manproject_params #(idProject,idMember)
#    params.require(:data).permit(idProject,idMember)    
#    
#  end


end



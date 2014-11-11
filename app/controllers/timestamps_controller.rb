class TimestampsController < ApplicationController
  before_action :set_timestamp, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /timestamps
  # GET /timestamps.json
  def index
    @timestamps = current_user.timestamps.all
  end

  # GET /timestamps/1
  # GET /timestamps/1.json
  def show
  end

  # GET /timestamps/new
  def new
    @timestamp = current_user.timestamps.new
  end

  # GET /timestamps/1/edit
  def edit
  end

  # POST /timestamps
  # POST /timestamps.json
  def create
    @timestamp = current_user.timestamps.new(timestamp_params)

    respond_to do |format|
      if @timestamp.save
        format.html { redirect_to @timestamp, notice: 'Timestamp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @timestamp }
      else
        format.html { render action: 'new' }
        format.json { render json: @timestamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timestamps/1
  # PATCH/PUT /timestamps/1.json
  def update
    respond_to do |format|
      if @timestamp.update(timestamp_params)
        format.html { redirect_to @timestamp, notice: 'Timestamp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @timestamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timestamps/1
  # DELETE /timestamps/1.json
  def destroy
    @timestamp.destroy
    respond_to do |format|
      format.html { redirect_to timestamps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timestamp
      @timestamp = current_user.timestamps.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timestamp_params
      params.require(:timestamp).permit(:project, :horas)
    end
    
    
    
    ###############
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_timestamp
      unless @timestamp = current_user.timestamps.where(id: params[:id]).first
        flash[:alert] = 'Timestamp not found.'
        redirect_to root_url
      end
    end
    
    
end

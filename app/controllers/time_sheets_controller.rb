class TimeSheetsController < ApplicationController
  
  before_action :set_time_sheet, only: [:show, :update, :destroy]
     
  # GET /time_sheets
  def index
   # @time_sheets = TimeSheet.all
    if (params[:job_date] && params[:first_name])    
        @time_sheets = TimeSheet.where("first_name = ? AND job_date = ?",params[:first_name], params[:job_date])
    else

      @time_sheets = TimeSheet.all
    end  
      
  
      #  @time_sheets = if params[:first_name]  
      #       TimeSheet.joins(:job_times).where("first_name = ? AND job_date = ? AND job_times.job_id = ? ",  params[:first_name], params[:job_date], params[:job_id])    
              
      #    else
      #    @time_sheets = TimeSheet.all
      #   end
    render json: @time_sheets.to_json(
      :include => :job_times  
    )
  end

  # GET /time_sheets/1
  def show
    render json: @time_sheet
  end

  # POST /time_sheets
  def create
    
    @time_sheet = TimeSheet.create!(time_sheet_params)    
    
    if @time_sheet.save
      render json: @time_sheet, status: :created, location: @time_sheet
    else
      render json: @time_sheet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /time_sheets/1
  def update
    if @time_sheet.update(time_sheet_params)
      render json: @time_sheet
    else
      render json: @time_sheet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /time_sheets/1
  def destroy
    @time_sheet.destroy
  end

  def search

  end

  private
  

    # Use callbacks to share common setup or constraints between actions.
    def set_time_sheet
      @time_sheet = TimeSheet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def time_sheet_params
      
     params[:time_sheet][:job_times_attributes] = params[:job_times_attributes]
     
      params.require(:time_sheet).permit(:first_name, :job_date, :end_date, job_times_attributes: [:job_id, :job_department, :job_category, :job_time, :is_overtime ]) 
     
    end
end

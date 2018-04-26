class TimeSheetsController < ApplicationController
  before_action :set_time_sheet, only: [:show, :update, :destroy]

  # wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]  
 #  wrap_parameters  include: [:job_id, :job_department, :job_category, :job_time, :is_overtime]

    
  # GET /time_sheets
  def index
    @time_sheets = TimeSheet.all

    render json: @time_sheets
  end

  # GET /time_sheets/1
  def show
    render json: @time_sheet
  end

  # POST /time_sheets
  def create
   # @time_sheet = TimeSheet.new(time_sheet_params)
   #puts "Job time  #{params.dig(:job_times)}"
    #jobtime = [{job_id: '1234', job_department: 'CNC'} ]
     #  job_times_attributes = time_sheet_params.delete("job_times")
   # puts "JOb #{job_times_attributes}"
    @time_sheet = TimeSheet.create!(time_sheet_params)
    
 
    #@time_sheet.job_times = job_times_attributes.map{ |j| Job_time.new(j)}
    @time_sheet.job_times.build()
   # @time_sheet.job_times = JobTimes.new(job_times_params)
   
   # @time_sheet.job_times.new(jobtime)
   
    puts" **** #{@time_sheet.first_name}"
   puts"Params #{params[:job_times]}"
  #  puts "Time Sheet Params #{params[0].values}    "
   # puts"JOB TIME #{@time_sheet.job_times.job_id}"
    
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

  private
  

    # Use callbacks to share common setup or constraints between actions.
    def set_time_sheet
      @time_sheet = TimeSheet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def time_sheet_params
      
     #params[:time_sheet][:job_times] = params[:job_times]
     
      params.require(:time_sheet).permit(:first_name, :job_date, :job_times => [:id, :job_id, :job_department, :job_category, :job_time, :is_overtime  ]) 
      
    end
end

class JobTimesController < ApplicationController
  before_action :set_job_time, only: [:show, :update, :destroy]

  # GET /job_times
  def index
    if(params[:job_id])
      @job_times = JobTime.where("job_id = ?", params[:job_id])
      logger.debug "Job times with status  #{@job_times}"
    else
      @job_times = JobTime.all
    end
    logger.debug "Job times #{@job_times}"

    render json: @job_times
  end

  # GET /job_times/1
  def show
    render json: @job_time
  end

  # POST /job_times
  def create
    @job_time = JobTime.new(job_time_params)

    if @job_time.save
      render json: @job_time, status: :created, location: @job_time
    else
      render json: @job_time.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_times/1
  def update
    if @job_time.update(job_time_params)
      render json: @job_time
    else
      render json: @job_time.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_times/1
  def destroy
    @job_time.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_time
      @job_time = JobTime.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_time_params
      params.require(:job_time).permit(:job_id, :job_department, :job_category, :job_time, :is_overtime)
    end
end

class FulltimesController < ApplicationController
  before_action :set_fulltime, only: [:show, :update, :destroy]

  # GET /fulltimes
  def index
    @fulltimes = Fulltime.all

    render json: @fulltimes
  end

  # GET /fulltimes/1
  def show
    render json: @fulltime
  end

  # POST /fulltimes
  def create
    @fulltime = Fulltime.new(fulltime_params)

    if @fulltime.save
      render json: @fulltime, status: :created, location: @fulltime
    else
      render json: @fulltime.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fulltimes/1
  def update
    if @fulltime.update(fulltime_params)
      render json: @fulltime
    else
      render json: @fulltime.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fulltimes/1
  def destroy
    @fulltime.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fulltime
      @fulltime = Fulltime.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fulltime_params
      params.require(:fulltime).permit(:value, :name)
    end
end

class CurrencyMastersController < ApplicationController
  before_action :set_currency_master, only: [:show, :update, :destroy]

  # GET /currency_masters
  def index
    @currency_masters = CurrencyMaster.all

    render json: @currency_masters
  end

  # GET /currency_masters/1
  def show
    render json: @currency_master
  end

  # POST /currency_masters
  def create
    @currency_master = CurrencyMaster.new(currency_master_params)

    if @currency_master.save
      render json: @currency_master, status: :created, location: @currency_master
    else
      render json: @currency_master.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /currency_masters/1
  def update
    if @currency_master.update(currency_master_params)
      render json: @currency_master
    else
      render json: @currency_master.errors, status: :unprocessable_entity
    end
  end

  # DELETE /currency_masters/1
  def destroy
    @currency_master.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currency_master
      @currency_master = CurrencyMaster.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def currency_master_params
      params.require(:currency_master).permit(:currency_id, :currency_code, :currency_description, :is_default_currency, :currency_image_url, :currency_status)
    end
end

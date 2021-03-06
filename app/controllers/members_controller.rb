class MembersController < ApplicationController
#  before_action :authenticate_user!
  before_action :set_member, only: [:show, :update, :destroy]
  
  # GET /members
  def index
    @members = Member.all.order(:id)

    render json: @members
  end

  # GET /members/1
  def show
    render json: @member
  end

  # POST /members
  def create
    @member = Member.new(member_params)

    if @member.save
      render json: @member, status: :created, location: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /members/1
  def update
    if @member.update(member_params)
      render json: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /members/1
  def destroy
    @member.destroy
    @members = Member.all

    render json: @members
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def member_params
      params.require(:member).permit(:member_id, :first_name, :last_name, :department, :role, :reporting_id, :join_date, :end_date, :category, :pay_rate, :status)
    end
end

class Api::V1::HonorsController < ApplicationController
  before_action :find_honor, only: [:destroy, :update]
  skip_before_action :authorized, only: [:index, :show]

  def index
    @honors = Honor.all
    render json: @honors
  end

  def show
    render json: @honor
  end

  def create
    @honor = Honor.new(honor_params)
    if @honor.save
      render json: @honor, status: :accepted
    else
      render json: { errors: @honor.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @honor.update(honor_params)
    if @honor.save
      render json: @honor, status: :accepted
    else
      render json: { errors: @honor.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @honor.destroy()
    render json: @honor
  end

  private

  def honor_params
    params.permit(:name, :summary, :month, :year, :order_id, :user_id)
  end

  def find_honor
    @honor = Honor.find(params[:id])
  end
end

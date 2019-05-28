class Api::V1::JobsController < ApplicationController
  before_action :find_job, only: [:destroy, :update]

  def index
    @jobs = Job.all
    render json: @jobs
  end

  def show
    render json: @job
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      render json: @job, status: :accepted
    else
      render json: { errors: @job.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @job.update(job_params)
    if @job.save
      render json: @job, status: :accepted
    else
      render json: { errors: @job.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @job.destroy()
    render json: @job
  end

  private

  def job_params
    params.permit(:company, :title, :summary, :start_month, :start_year, :end_month, :end_year, :responsibilities, :skills_used)
  end

  def find_job
    @job = Job.find(params[:id])
  end
end

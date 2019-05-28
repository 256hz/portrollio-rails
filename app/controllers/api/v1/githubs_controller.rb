class Api::V1::GithubsController < ApplicationController
  before_action :find_github, only: [:destroy, :update]

  def index
    @githubs = Github.all
    render json: @githubs
  end

  def show
    render json: @github
  end

  def create
    @github = Github.new(github_params)
    if @github.save
      render json: @github, status: :accepted
    else
      render json: { errors: @github.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @github.update(job_params)
    if @github.save
      render json: @github, status: :accepted
    else
      render json: { errors: @github.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @github.destroy()
    render json: @github
  end

  private

  def github_params
    params.permit(:first_name, :last_name, :email, :phone, :img_url)
  end

  def find_github
    @github = Github.find(params[:id])
  end
end

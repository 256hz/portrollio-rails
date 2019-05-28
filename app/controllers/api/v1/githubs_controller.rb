class Api::V1::GithubsController < ApplicationController
  before_action :find_skill, only: [:destroy, :update]

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
    @github.update(skill_params)
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
    params.permit(:name)
  end

  def find_skill
    @github = Skill.find(params[:id])
  end
end

class Api::V1::SkillsController < ApplicationController
  before_action :find_skill, only: [:destroy, :update]

  def index
    @skills = Skill.all
    render json: @skills
  end

  def show
    render json: @skill
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      render json: @skill, status: :accepted
    else
      render json: { errors: @skill.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @skill.update(skill_params)
    if @skill.save
      render json: @skill, status: :accepted
    else
      render json: { errors: @skill.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @skill.destroy()
    render json: @skill
  end

  private

  def skill_params
    params.permit(:name)
  end

  def find_skill
    @skill = Skill.find(params[:id])
  end
end

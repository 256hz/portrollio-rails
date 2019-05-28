class Api::V1::LinksController < ApplicationController
  before_action :find_link, only: [:destroy, :update]

  def index
    @links = Link.all
    render json: @links
  end

  def show
    render json: @link
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      render json: @link, status: :accepted
    else
      render json: { errors: @link.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @link.update(link_params)
    if @link.save
      render json: @link, status: :accepted
    else
      render json: { errors: @link.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @link.destroy()
    render json: @link
  end

  private

  def link_params
    params.permit(:title, :url, :summary)
  end

  def find_link
    @link = Link.find(params[:id])
  end
end

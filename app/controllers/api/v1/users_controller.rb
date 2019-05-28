class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  before_action :find_user, only: [:destroy, :update]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(job_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
    end
  end

  def update
    @user.update(job_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user.destroy()
    render json: @user
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :phone, :img_url, :bio,
      :intro, :github_username, :title, :password_digest)
  end

  def find_user
    @user = User.find(params[:id])
  end
end

class Api::V1::UsersController < ApplicationController
skip_before_action :authorized, only: [:create]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {user: UserSerializer.new(@user)}, status: :created
    else
      render json: {error: 'Failed to create user'}, status: :not_acceptable
    end
  end

  def show
    @user= User.find(params[:id])
    render json: @user
  end

  def destroy
    @user=User.find(params[:id])
    @user.destroy
    render json: @users
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end

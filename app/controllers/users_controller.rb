class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.order(:id)
  end

  def show
    @user = User.find_by_id(params[:id])
    @posts = Post.includes(:user).where(user_id: @user.id).order(:id)
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :bio, :photo)
  end
end

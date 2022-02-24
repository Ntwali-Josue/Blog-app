class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = Post.where(user_id: @user.id).order(:id)
  end

  def create
    @post = Post.create(post_params)
    @post.update_comments_counter
    @post.update_likes_counter
    redirect_back(fallback_location: root_path)
  end

  def update; end

  def edit; end

  def destroy; end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @comments = Comment.where(post_id: @post.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :postCounter, :LikesCounter, :user_id)
  end
end

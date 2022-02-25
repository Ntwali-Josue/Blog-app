class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @user = current_user
    # @posts = Post.where(user_id: @user.id).order(:id)
    @posts = @user.posts.includes(:comments).where(user_id: @user.id).order(:id)
  end

  def create
    @post = current_user.posts.create(post_params.merge(user_id: current_user.id))
    @post.user_id = current_user.id if current_user
    @post.postsCounter = 0
    @post.LikesCounter = 0
    if @post.save
      flash[:notice] = 'Post was successfully created!!!'
      redirect_to user_post_path(@post.user_id, @post.id)
    else
      render 'new'
      flash[:notice] = 'Post was not created.'
    end
  end

  def update; end

  def edit; end

  def destroy; end

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
    # @comments = Comment.where(post_id: @post.id)
    @comments = Comment.includes(:post).where(post_id: @post.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end

class PostsController < ApplicationController
  # load_and_authorize_resource

  def new
    @post = Post.new
  end

  def index
    @current_user = current_user
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments).where(user_id: @user.id).order(:id)
  end

  def create
    @post = Post.new(post_params.merge(user_id: current_user.id))
    @post.user_id = current_user.id
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

  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
    redirect_to user_posts_path(current_user.id)
  end

  def all_posts
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
    # @comments = Comment.where(post_id: @post.id)
    @comments = Comment.includes(:post).where(post_id: @post.id)
    # authorize! :read, @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end

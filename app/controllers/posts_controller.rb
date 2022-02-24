class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @user = current_user
    @posts = Post.where(user_id: @user.id).order(:id)
  end

  def create
    @post = Post.create(post_params)
    @post.user_id = current_user.id if current_user
    if @post.save
      flash[:notice] = 'Post was successfully created!!!'
      redirect_to posts_path
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
    @comments = Comment.where(post_id: @post.id)
  end

  private

  def post_params
    params.require(:data).permit(:title, :text)
  end
end

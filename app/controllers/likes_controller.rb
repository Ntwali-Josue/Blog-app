class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @post = Post.find_by_id(params[:post_id])
    @post.increment!(:LikesCounter)
    redirect_back(fallback_location: root_path)
  end
end

class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @post = Post.find(params[:post_id])
    @like = current_user.likes.new(post_id: @post.id])
    flash[:notice] = 'You liked the post ❤️'
    respond_to do |format|
      format.html { redirect_to @post } if @post.save
    end
  end
end

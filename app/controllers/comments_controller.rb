class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find_by_id(params[:post_id])
    @post.comments.create(comment_params.merge(user_id: current_user.id))
    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:data).permit(:text)
  end
end
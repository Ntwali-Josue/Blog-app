class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find_by_id(params[:post_id])
    @user = User.find_by_id(@post.user_id)
    @comment = Comment.new(comment_params.merge(user_id: current_user.id, post_id: @post.id))

    flash[:notice] = if @comment.save
                       'You commented the post 💬'
                     else
                       'Comment was not created.'
                     end
    redirect_to user_posts_path(@user.id)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = 'You deleted the post 💬'
    redirect_to user_post_path(current_user.id, @comment.post.id)
  end

  private

  def comment_params
    params.require(:data).permit(:text)
  end
end

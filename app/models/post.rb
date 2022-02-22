class Post < ApplicationRecord
  belongs_to :users
  has_many :comments, class_name: 'Comment'
  has_many :likes, class_name: 'Like'

  def update_comments_counter
    commentscounter = Comment.where(post_id: id).count
    update(CommentsCounter: commentscounter)
  end

  def update_likes_counter
    likescounter = Like.where(post_id: id).count
    update(LikesCounter: likescounter)
  end

  def most_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end

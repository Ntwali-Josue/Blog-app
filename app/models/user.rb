class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  def most_recent_posts
    Post.where(user_id: id).last(3)
  end

  def update_posts_counter
    postscounter = Post.where(user_id: id).count
    update(PostsCounter: postscounter)
  end
end

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  # has_many :user_posts

  def most_recent_posts
    posts = Post.all
    posts.order(created_at: :desc).limit(3)
  end

  def update_posts_count
    user.increment!(:posts_counter)
  end
end

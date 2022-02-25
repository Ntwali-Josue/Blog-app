class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  # has_many :user_posts

  validates :title, presence: true, length: { minimum: 3 }
  validates :text, presence: true, length: { minimum: 3 }
  validates :postsCounter, :LikesCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def most_recent_posts
    posts = Post.all
    posts.order(created_at: :desc).limit(3)
  end

  def recents_comments
    comments.includes(:post).order(created_at: :desc).limit(3)
  end

  def update_posts_count
    user.increment!(:posts_counter)
  end
end

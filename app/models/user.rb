class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def most_recent_posts
    Post.where(user_id: id).last(3)
  end

  def update_posts_counter
    postscounter = Post.where(user_id: id).count
    update(PostsCounter: postscounter)
  end
end

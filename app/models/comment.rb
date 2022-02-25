class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  after_save :update_comments_count

  validates :text, presence: true, length: { minimum: 3 }

  def update_comments_count
    post.increment!(:postsCounter)
  end

  def find_user
    User.find(user_id).name
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, presence: true
  validates :PostsCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # User::Roles
  # The available roles
  roles = [:admin, :default]

  def is?(requested_role)
    role == requested_role.to_s
  end

  def most_recent_posts
    Post.where(user_id: id).last(3)
  end

  def update_posts_counter
    postscounter = Post.where(user_id: id).count
    update(PostsCounter: postscounter)
  end
end

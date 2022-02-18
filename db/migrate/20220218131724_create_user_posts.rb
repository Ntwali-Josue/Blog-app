class CreateUserPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_posts do |t|
      t.string :comment
      t.string :like
      t.string :post

      t.timestamps
    end
  end
end

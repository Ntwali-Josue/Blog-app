class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :text
      t.integer :postsCounter, default: 0
      t.integer :LikesCounter, default: 0

      t.timestamps
    end
  end
end

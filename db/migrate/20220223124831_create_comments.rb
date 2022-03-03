class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.bigint :user_id
      t.bigint :post_id
      t.text :text

      t.timestamps
    end

    add_foreign_key :comments, :users, column: :user_id
    add_foreign_key :comments, :posts, column: :post_id

    add_index :comments, [:user_id, :post_id], unique: false
  end
end

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :content

      t.timestamps
    end
    add_foreign_key :posts, :users, column: :user_id
  end
end

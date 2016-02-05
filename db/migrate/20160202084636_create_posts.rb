class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :category_id
      t.integer :tag_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

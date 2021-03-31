class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :account
      t.references :community
      t.string :title
      t.text :body
      t.integer :likes, default: 0
      t.integer :total_comments, default: 0
      t.timestamps
    end
  end
end

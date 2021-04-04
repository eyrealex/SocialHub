class AddFieldsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :upvotes, :integer
    add_column :posts, :downvotes, :integer
  end
end

class AddDescriptionToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :description, :string
  end
end

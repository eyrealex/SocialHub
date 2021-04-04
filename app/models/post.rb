class Post < ApplicationRecord
  belongs_to :account
  belongs_to :community
  validates_presence_of :title, :body, :account_id, :community_id
  has_many :comments

  def self.search(search)
    if search
      community = Post.find_by(title: search)
        if community
          self.where(community_id: community)
        else
          Post.all
        end
      else
        Post.all
      end
  end
end

class Community < ApplicationRecord
  belongs_to :account
  validates_presence_of :url, :name, :rules
  has_many :posts
  has_many :subscriptions
  has_many :subscribers, through: :subscriptions, source: :account

  def self.search(params)
    communities = Community.where("rules LIKE ? or name LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    communities # returns the community containing the search words
  end

end

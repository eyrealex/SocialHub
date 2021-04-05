class HomeController < ApplicationController
  def index
    @communities = Community.all.limit(5)
    @posts = Post.order(id: :desc).limit(20)
    @tweets = Tweet.spacex #to show the tweets on the home index page
  end

  def profile
    @profile  = Account.find_by_username params[:username]
    @posts = @profile.posts
  end


end
